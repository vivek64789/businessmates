import 'dart:io';

import '../../core/errors/image_upload_failure.dart';
import '../../core/errors/manage_course_lesson_failure.dart';
import '../../core/errors/manage_course_section_failure.dart';
import '../../core/errors/manage_profile_failure.dart';
import '../models/course/course_lesson_model.dart';
import '../models/course/course_model.dart';
import '../../core/errors/manage_course_failure.dart';
import '../models/course/course_section_model.dart';
import '../models/course_categories_model.dart';
import '../../core/errors/manage_categories_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../core/errors/auth_failure.dart';
import '../models/user_profile_model.dart';
import '../../domain/repositories/repository.dart';

import '../../core/utils/network_info.dart';
import '../datasources/remote_datasource.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Stream<User> authStateChanges() async* {}

  @override
  Future<Either<AuthFailure, Unit>> changePassword(
      {required String password}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.changePassword(password: password);
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmPasswordReset(
      {required String code, required String password}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.confirmPasswordReset(
          code: code, password: password);
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, User>> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.createUserWithEmailAndPassword(
          email: email, password: password);
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageProfileFailure, UserProfileModel>> getUserProfile(
      {required String uid}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getUserProfile(uid: uid);
    } else {
      return left(const ManageProfileFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, void>> sendPasswordResetEmail(
      {required String email}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.sendPasswordResetEmail(email: email);
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.signInWithEmailAndPassword(
          email: email, password: password);
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.signOut();
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageProfileFailure, void>> updateUserProfile(
      {required UserProfileModel userProfile}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.updateUserProfile(userProfile: userProfile);
    } else {
      return left(const ManageProfileFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ImageUploadFailure, String>> uploadUserProfileImage(
      {required String uid, required File image}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.uploadUserProfileImage(uid: uid, image: image);
    } else {
      return left(const ImageUploadFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendEmailVerification() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.sendEmailVerification();
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ImageUploadFailure, String>> uploadSingleImage(
      {required File image}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.uploadSingleImage(image: image);
    } else {
      return left(const ImageUploadFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCategoriesFailure, List<CategoriesModel>>>
      getAllCourseCategories() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllCourseCategories();
    } else {
      return left(const ManageCategoriesFailure.noInternetConnection());
    }
  }

  @override
  Stream<List<CategoriesModel>> streamAllCourseCategories() async* {
    yield* remoteDataSource.streamAllCourseCategories();
  }

  @override
  Stream<List<CourseModel>> streamAllCourseOfCategories(
      {required String categoryId}) async* {
    yield* remoteDataSource.streamAllCoursesOfCategory(categoryId: categoryId);
  }

  @override
  Future<Either<ManageCourseSectionFailure, List<CourseSectionModel>>>
      getAllSectionsOfCourse(
          {required CourseSectionModel courseSectionModel}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllSectionsOfCourse(
          courseSectionModel: courseSectionModel);
    } else {
      return left(const ManageCourseSectionFailure.noInternetConnection());
    }
  }

  @override
  Stream<List<CourseSectionModel>> streamAllSectionsOfCourse(
      {required CourseModel courseModel}) async* {
    yield* remoteDataSource.streamAllSectionsOfCourse(courseModel: courseModel);
  }

  @override
  Future<Either<ManageCourseLessonFailure, List<CourseLessonModel>>>
      getAllSectionsOfLesson(
          {required CourseLessonModel courseLessonModel}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllSectionsOfLesson(
          courseLessonModel: courseLessonModel);
    } else {
      return left(const ManageCourseLessonFailure.noInternetConnection());
    }
  }

  @override
  Stream<List<CourseLessonModel>> streamAllLessonOfSection(
      {required CourseSectionModel courseSectionModel}) async* {
    if (await networkInfo.isConnected) {
      yield* remoteDataSource.streamAllLessonOfSection(
          courseSectionModel: courseSectionModel);
    } else {
      yield* const Stream.empty();
    }
  }

  @override
  Stream<UserProfileModel> streamUserProfile({required String uid}) async* {
    if (await networkInfo.isConnected) {
      yield* remoteDataSource.streamUserProfile(uid: uid);
    } else {
      yield* const Stream.empty();
    }
  }

  @override
  Stream<List<CourseModel>> streamAllCourses() async* {
    if (await networkInfo.isConnected) {
      yield* remoteDataSource.streamAllCourses();
    } else {
      yield* const Stream.empty();
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllCoursesOfCategory({required String categoryId}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllCoursesOfCategory(categoryId: categoryId);
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, Unit>> enrollCourse(
      {required CourseModel course, required String userId}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.enrollCourse(course: course, userId: userId);
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>> getEnrolledCourses(
      {required String userId}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getEnrolledCourses(userId: userId);
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllFeaturedCourses() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllFeaturedCourses();
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllFreeCourses() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllFreeCourses();
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllNewCourses() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllNewCourses();
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllPopularCourses() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllPopularCourses();
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllTrendingCourses() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllTrendingCourses();
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ManageCourseFailure, List<CourseModel>>> getAllCourses() async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.getAllCourses();
    } else {
      return left(const ManageCourseFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<AuthFailure, void>> sendResetPasswordLink(
      {required String email}) async {
    if (await networkInfo.isConnected) {
      return remoteDataSource.sendResetPasswordLink(email: email );
    } else {
      return left(const AuthFailure.noInternetConnection());
    }
  }
}
