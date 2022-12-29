import 'dart:async';
import 'dart:io';

import '../../core/errors/auth_failure.dart';
import '../../core/errors/image_upload_failure.dart';
import '../../core/errors/manage_categories_failure.dart';
import '../../core/errors/manage_course_failure.dart';
import '../../core/errors/manage_course_lesson_failure.dart';
import '../../core/errors/manage_course_section_failure.dart';
import '../../core/errors/manage_profile_failure.dart';
import '../models/course/course_lesson_model.dart';
import '../models/course/course_model.dart';
import '../models/course/course_section_model.dart';
import '../models/course_categories_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/auth_user_model.dart';
import '../models/user_profile_model.dart';
import 'local_datasource.dart';

abstract class RemoteDataSource {
  // authentication sources

  Stream<AuthUserModel> authStateChanges();
  // register
  Future<Either<AuthFailure, User>> createUserWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {required String email, required String password});
  // change firebase password
  Future<Either<AuthFailure, Unit>> changePassword({required String password});
  // forgot firebase password
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(
      {required String email});
  // update forgoted password after reset
  Future<Either<AuthFailure, Unit>> confirmPasswordReset(
      {required String code, required String password});

  Future<Either<AuthFailure, Unit>> signOut();

  // send otp to email for verification
  Future<Either<AuthFailure, Unit>> sendEmailVerification();

  // profile sources
  // get user profile
  Future<Either<ManageProfileFailure, UserProfileModel>> getUserProfile(
      {required String uid});
  Stream<UserProfileModel> streamUserProfile({required String uid});
  // update user profile
  Future<Either<ManageProfileFailure, Unit>> updateUserProfile(
      {required UserProfileModel userProfile});
  // update user profile image

  Future<Either<ImageUploadFailure, String>> uploadUserProfileImage(
      {required String uid, required File image});

  Future<Either<ImageUploadFailure, String>> uploadSingleImage(
      {required File image});

  // course categories sources

  Stream<List<CategoriesModel>> streamAllCourseCategories();

  Future<Either<ManageCategoriesFailure, List<CategoriesModel>>>
      getAllCourseCategories();

  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllCoursesOfCategory({required String categoryId});
  // stream all courses
  Stream<List<CourseModel>> streamAllCoursesOfCategory(
      {required String categoryId});
  Stream<List<CourseModel>> streamAllCourses();
  Future<List<CourseModel>> getAllCourses();

  Future<Either<ManageCourseSectionFailure, List<CourseSectionModel>>>
      getAllSectionsOfCourse({required CourseSectionModel courseSectionModel});
  // stream all courses
  Stream<List<CourseSectionModel>> streamAllSectionsOfCourse(
      {required CourseModel courseModel});

  // Lesson sources

  // get all Lessons
  Future<Either<ManageCourseLessonFailure, List<CourseLessonModel>>>
      getAllSectionsOfLesson({required CourseLessonModel courseLessonModel});
  // stream all Lessons
  Stream<List<CourseLessonModel>> streamAllLessonOfSection(
      {required CourseSectionModel courseSectionModel});
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  final LocalDataSource localDataSource;
  final FirebaseStorage firebaseStorage;

  RemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.localDataSource,
    required this.firestore,
    required this.firebaseStorage,
  });

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    await firebaseAuth.signOut();
    return right(unit);
  }

  @override
  Stream<AuthUserModel> authStateChanges() async* {
    yield* firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          return AuthUserModel.empty();
        } else {
          // caching the user each time token is refreshed.
          user.getIdToken().then(
                (token) => localDataSource.cacheAuthToken(token),
              );
          return AuthUserModel(
              id: user.uid, email: user.email!, uuid: user.uid);
        }
      },
    );
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    User? user = firebaseAuth.currentUser;
    try {
      final data = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // check if user is admin or not in firestore
      final doc = await firestore.collection('users').doc(data.user!.uid).get();

      if (doc.exists) {
        final role = doc.data()!['role'];
        if (role != 'admin') {
          await firebaseAuth.signOut();
          FirebaseAuthException(
              code: 'user-not-found', message: 'User is not admin');
        } else {
          // caching the user each time token is refreshed.
          data.user!.getIdToken().then(
                (token) => localDataSource.cacheAuthToken(token),
              );
        }
      } else {
        await firebaseAuth.signOut();
        throw FirebaseAuthException(
            code: 'user-not-found', message: 'User is not admin');
      }

      user = data.user;

      return right(user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound(
            message: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination(
            message: "Your email and password doesn't match."));
      } else {
        return left(const AuthFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(
      {required String password}) async {
    try {
      await firebaseAuth.currentUser!.updatePassword(password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        return left(const AuthFailure.requiresRecentLogin(
          message:
              'The user must reauthenticate before this operation can be executed.',
        ));
      } else {
        return left(const AuthFailure.serverError(
          message: 'Server error',
        ));
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    User? user = firebaseAuth.currentUser;
    print(email + password);
    try {
      final data = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("Yes iaam here");
      print(data);
      // create user in cloud storage with role, name, email, phone, etc.
      await firestore.collection('users').doc(data.user!.uid).set(
        {
          'uid': data.user!.uid,
          'email': email,
          'role': 'admin',
          'name': '',
          'phone': '',
          'address': '',
          'city': '',
          'state': '',
          'zip': '',
          'country': '',
          'image_url': '',
          'created_at': DateTime.now(),
          'updated_at': DateTime.now(),
        },
      );

      user = data.user;
      return right(user!);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'weak-password') {
        return left(const AuthFailure.weakPassword(
            message: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        return left(
          const AuthFailure.emailAlreadyInUse(
              message: 'The account already exists for that email.'),
        );
      } else {
        return left(
          const AuthFailure.serverError(
            message: 'Server error',
          ),
        );
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmPasswordReset(
      {required String code, required String password}) async {
    try {
      await firebaseAuth.confirmPasswordReset(
          code: code, newPassword: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-action-code') {
        return left(const AuthFailure.invalidActionCode(
            message:
                "The code is invalid. This can happen if the code is malformed, expired, or has already been used."));
      } else {
        return left(const AuthFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(
      {required String email}) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound(
            message: 'No user found for that email.'));
      } else {
        return left(const AuthFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Future<Either<ManageProfileFailure, UserProfileModel>> getUserProfile(
      {required String uid}) async {
    // get user profile from firestore
    UserProfileModel userData = UserProfileModel.empty();
    try {
      final doc = await firestore.collection('users').doc(uid).get();
      if (doc.exists) {
        final data = doc.data();
        userData = UserProfileModel.fromJson(data!);
        // caching the user each time.
        return right(userData);
      } else {
        throw FirebaseException(
            plugin: "Firestore",
            code: 'user-not-found',
            message: 'No user found ');
      }
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        return left(
            const ManageProfileFailure.notFound(message: 'No user found'));
      } else {
        return left(
            const ManageProfileFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Future<Either<ManageProfileFailure, Unit>> updateUserProfile(
      {required UserProfileModel userProfile}) async {
    // update user profile in firestore
    try {
      print(userProfile);
      await firestore.collection('users').doc(userProfile.uid).update({
        'name': userProfile.name,
        'phone': userProfile.phone,
        'address': userProfile.address,
        'city': userProfile.city,
        'state': userProfile.state,
        'country': userProfile.country,
        'image_url': userProfile.imageUrl,
        'updated_at': DateTime.now(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        return left(
            const ManageProfileFailure.notFound(message: 'No user found'));
      } else {
        return left(
            const ManageProfileFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Future<Either<ImageUploadFailure, String>> uploadUserProfileImage(
      {required String uid, required File image}) async {
    // upload user profile image to firebase storage
    String url = '';
    try {
      final ref = firebaseStorage.ref().child('users/$uid/profile.jpg');
      await ref.putFile(image);
      url = await ref.getDownloadURL();

      await firestore.collection('users').doc(uid).update({
        'image_url': url,
        'updated_at': DateTime.now(),
      });
      return right(url);
    } on FirebaseException {
      return left(const ImageUploadFailure.unableToUploadImage(
          message: 'Unable to upload image'));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendEmailVerification() async {
    try {
      await firebaseAuth.currentUser!.sendEmailVerification();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound(message: 'No user found'));
      } else {
        return left(const AuthFailure.serverError(message: 'Server error'));
      }
    }
  }
  // creating course categories

  @override
  Future<Either<ManageCategoriesFailure, CategoriesModel>> createCourseCategory(
      {required String name,
      required String description,
      required String imageUrl}) async {
    // upload image and get url
    // create category in firestore
    try {
      final doc = await firestore
          .collection("categories")
          .where('name', isEqualTo: name)
          .get();
      if (doc.docs.isNotEmpty) {
        throw FirebaseException(
            plugin: "Firestore",
            code: 'category-already-exists',
            message: 'Category already exists');
      } else {
        final data = await firestore.collection("categories").add({
          'id': "",
          'name': name,
          'description': description,
          'image_url': imageUrl,
          'created_at': DateTime.now(),
          'updated_at': DateTime.now(),
        });
        // get the data from document reference and return
        final doc = await data.get();
        data.update({'id': doc.id});

        return right(CategoriesModel.fromJson(doc.data()!));
      }
    } on FirebaseException catch (e) {
      if (e.code == 'category-already-exists') {
        return left(const ManageCategoriesFailure.categoryAlreadyExists(
            message: 'Category already exists'));
      } else {
        return left(
            const ManageCategoriesFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Future<Either<ImageUploadFailure, String>> uploadSingleImage(
      {required File image}) async {
    String url = '';
    try {
      final ref = firebaseStorage.ref().child('images/${DateTime.now()}.jpg');
      await ref.putFile(image);
      url = await ref.getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      return left(ImageUploadFailure.serverError(message: e.message!));
    }
  }

  @override
  Future<Either<ManageCategoriesFailure, List<CategoriesModel>>>
      getAllCourseCategories() async {
    // get all categories from firestore
    List<CategoriesModel> categories = [];
    try {
      final doc = await firestore.collection('categories').get();
      if (doc.docs.isNotEmpty) {
        for (var item in doc.docs) {
          categories.add(CategoriesModel.fromJson(item.data()));
        }
        return right(categories);
      } else {
        throw FirebaseException(
            plugin: "Firestore",
            code: 'no-categories-found',
            message: 'No categories found');
      }
    } on FirebaseException catch (e) {
      if (e.code == 'no-categories-found') {
        return left(const ManageCategoriesFailure.noCategoriesFound(
            message: 'No categories found'));
      } else {
        return left(
            const ManageCategoriesFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Stream<List<CategoriesModel>> streamAllCourseCategories() async* {
    // get snapshots
    final doc = firestore.collection('categories').snapshots();
    yield* doc.map((event) {
      return event.docs.map((e) => CategoriesModel.fromJson(e.data())).toList();
    });
  }

  // Courses

  @override
  Future<Either<ManageCourseFailure, CourseModel>> deleteCourse(
      {required CourseModel courseModel}) async {
    // delete course by id inside course collection inside category collection
    try {
      await firestore
          .collection("categories")
          .doc(courseModel.categoryId)
          .collection('courses')
          .doc(courseModel.id)
          .delete();
      return right(CourseModel.empty());
    } catch (e) {
      return left(
          const ManageCourseFailure.serverError(message: 'Server error'));
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllCoursesOfCategory({required String categoryId}) async {
    try {
      final doc = await firestore
          .collection("categories")
          .doc(categoryId)
          .collection('courses')
          .get();
      if (doc.docs.isNotEmpty) {
        List<CourseModel> courses = [];
        for (var item in doc.docs) {
          courses.add(CourseModel.fromJson(item.data()));
        }
        return right(courses);
      } else {
        throw FirebaseException(
            plugin: "Firestore",
            code: 'no-courses-found',
            message: 'No courses found');
      }
    } on FirebaseException catch (e) {
      if (e.code == 'no-courses-found') {
        return left(
            const ManageCourseFailure.notFound(message: 'No courses found'));
      } else {
        return left(
            const ManageCourseFailure.serverError(message: 'Server error'));
      }
    }
  }

  @override
  Stream<List<CourseModel>> streamAllCoursesOfCategory(
      {required String categoryId}) async* {
    final doc = firestore
        .collection('categories')
        .doc(categoryId)
        .collection("courses")
        .snapshots();

    yield* doc.map((event) {
      final data =
          event.docs.map((e) => CourseModel.fromJson(e.data())).toList();
      return data;
    });
  }

  @override
  Stream<List<CourseSectionModel>> streamAllSectionsOfCourse(
      {required CourseModel courseModel}) async* {
    final doc = firestore
        .collection('categories')
        .doc(courseModel.categoryId)
        .collection("courses")
        .doc(courseModel.id)
        .collection('sections')
        .snapshots();

    yield* doc.map((event) {
      final data =
          event.docs.map((e) => CourseSectionModel.fromJson(e.data())).toList();
      return data;
    });
  }

  @override
  Future<Either<ManageCourseLessonFailure, List<CourseLessonModel>>>
      getAllSectionsOfLesson(
          {required CourseLessonModel courseLessonModel}) async {
    // TODO: implement getAllSectionsOfLesson
    throw UnimplementedError();
  }

  @override
  Stream<List<CourseLessonModel>> streamAllLessonOfSection(
      {required CourseSectionModel courseSectionModel}) async* {
    final doc = firestore
        .collection('categories')
        .doc(courseSectionModel.categoryId)
        .collection("courses")
        .doc(courseSectionModel.courseId)
        .collection('sections')
        .doc(courseSectionModel.id)
        .collection('lessons')
        .snapshots();

    yield* doc.map((event) {
      final data =
          event.docs.map((e) => CourseLessonModel.fromJson(e.data())).toList();
      return data;
    });
  }

  @override
  Stream<UserProfileModel> streamUserProfile({required String uid}) async* {
    final doc = firestore.collection('users').doc(uid).snapshots();

    yield* doc.map((event) {
      print(event.data());
      final data = UserProfileModel.fromJson(event.data()!);
      print(data);

      return data;
    });
  }

  @override
  Future<Either<ManageCourseSectionFailure, List<CourseSectionModel>>>
      getAllSectionsOfCourse(
          {required CourseSectionModel courseSectionModel}) async {
    return right([]);
  }

  @override
  Stream<List<CourseModel>> streamAllCourses() async* {
    // reference to categories collection
    final categoriesRef = firestore.collection('categories');
    //  snapshot categories
    final categoriesSnapshot = categoriesRef.snapshots();

    final List<CourseModel> courseList = [];

    // listen to categories snapshot
    categoriesSnapshot.map((event) => event.docs).listen(
      (event) {
        // loop through categories
        for (var category in event) {
          // get courses of each category
          final coursesSnapshot =
              category.reference.collection('courses').snapshots();
          // listen to courses snapshot
          coursesSnapshot.map((event) => event.docs).listen(
            (event) {
              // loop through courses
              for (var course in event) {
                // add course to course list
                final courseModel = CourseModel.fromJson(course.data());

                // empty section model
                final List<CourseSectionModel> sectionList = [];
                // get sections of each course
                final sectionsSnapshot =
                    course.reference.collection('sections').snapshots();
                // listen to sections snapshot
                sectionsSnapshot.map((event) => event.docs).listen(
                  (event) {
                    // loop through sections
                    for (var section in event) {
                      // add section to section list
                      final sectionModel =
                          CourseSectionModel.fromJson(section.data());

                      // empty lesson model
                      final List<CourseLessonModel> lessonList = [];
                      // get lessons of each section
                      final lessonsSnapshot =
                          section.reference.collection('lessons').snapshots();
                      // listen to lessons snapshot
                      lessonsSnapshot.map((event) => event.docs).listen(
                        (event) {
                          // loop through lessons
                          for (var lesson in event) {
                            // add lesson to lesson list
                            final lessonModel =
                                CourseLessonModel.fromJson(lesson.data());
                            lessonList.add(lessonModel);
                          }
                        },
                      );
                      // add lesson list to section model
                      final newSectionModel =
                          sectionModel.copyWith(lessons: lessonList);
                      sectionList.add(newSectionModel);
                    }
                  },
                );
                final newCourseModel =
                    courseModel.copyWith(sections: sectionList);
                courseList.add(newCourseModel);
              }
            },
          );
        }
      },
    );
    yield* Stream.value(courseList);
  }

  @override
  Future<List<CourseModel>> getAllCourses() async {
    // write a query to fetch all courses inside a categories from a firestore database using in flutter.
//following is structure of the database
//root collection is categories
//categories has various field and each categories have their own collection named courses and i need that all courses into single list and return as list of courses model

    // get all categories
    final categories = await firestore.collection('categories').get();
    // empty course list
    List<CourseModel> courseList = [];
    // loop through categories
    for (var category in categories.docs) {
      // get all courses of each category
      final courses = await category.reference.collection('courses').get();
      // loop through courses
      for (var course in courses.docs) {
        // add course to course list
        courseList.add(CourseModel.fromJson(course.data()));
      }
    }

    return Future.value(courseList);
  }

  //
}
