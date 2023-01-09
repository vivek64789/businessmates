import 'dart:io';

import '../../core/errors/manage_course_failure.dart';
import '../../core/errors/manage_profile_failure.dart';
import '../../data/models/course/course_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/errors/image_upload_failure.dart';
import '../../core/errors/manage_categories_failure.dart';
import '../../core/errors/manage_course_lesson_failure.dart';
import '../../core/errors/manage_course_section_failure.dart';
import '../../data/models/course/course_lesson_model.dart';
import '../../data/models/course/course_section_model.dart';
import '../../data/models/course_categories_model.dart';
import '../../data/models/user_profile_model.dart';

abstract class Repository {
  // authentication actions
  Stream<User> authStateChanges();
  Future<Either<AuthFailure, Unit>> signOut();
  Future<Either<AuthFailure, void>> changePassword({required String password});
  Future<Either<AuthFailure, void>> sendPasswordResetEmail(
      {required String email});
  Future<Either<AuthFailure, void>> confirmPasswordReset(
      {required String code, required String password});
  Future<Either<AuthFailure, User>> createUserWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {required String email, required String password});

  // profile actions
  Future<Either<ManageProfileFailure, UserProfileModel>> getUserProfile(
      {required String uid});
  Stream<UserProfileModel> streamUserProfile({required String uid});
  Future<Either<ManageProfileFailure, void>> updateUserProfile(
      {required UserProfileModel userProfile});
  Future<Either<ImageUploadFailure, String>> uploadUserProfileImage(
      {required String uid, required File image});

  // eend email verification
  Future<Either<AuthFailure, void>> sendEmailVerification();

  Stream<List<CategoriesModel>> streamAllCourseCategories();

  Future<Either<ImageUploadFailure, String>> uploadSingleImage(
      {required File image});

  Future<Either<ManageCategoriesFailure, List<CategoriesModel>>>
      getAllCourseCategories();

  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllCoursesOfCategory({required String categoryId});

  // courses
  Stream<List<CourseModel>> streamAllCourseOfCategories(
      {required String categoryId});
  Stream<List<CourseModel>> streamAllCourses();

  // course sections
  // Section sources
  // create Section

  Future<Either<ManageCourseSectionFailure, List<CourseSectionModel>>>
      getAllSectionsOfCourse({required CourseSectionModel courseSectionModel});
  // stream all courses
  Stream<List<CourseSectionModel>> streamAllSectionsOfCourse(
      {required CourseModel courseModel});

  // Lesson sources
  // create Lesson

  // get all Lessons
  Future<Either<ManageCourseLessonFailure, List<CourseLessonModel>>>
      getAllSectionsOfLesson({required CourseLessonModel courseLessonModel});
  // stream all Lessons
  Stream<List<CourseLessonModel>> streamAllLessonOfSection(
      {required CourseSectionModel courseSectionModel});

  Future<Either<ManageCourseFailure, Unit>> enrollCourse(
      {required CourseModel course, required String userId});

  Future<Either<ManageCourseFailure, List<CourseModel>>> getEnrolledCourses(
      {required String userId});

  // all courses

  Future<Either<ManageCourseFailure, List<CourseModel>>> getAllCourses();

  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllFeaturedCourses();
  Future<Either<ManageCourseFailure, List<CourseModel>>> getAllFreeCourses();
  Future<Either<ManageCourseFailure, List<CourseModel>>> getAllNewCourses();
  Future<Either<ManageCourseFailure, List<CourseModel>>> getAllPopularCourses();
  Future<Either<ManageCourseFailure, List<CourseModel>>>
      getAllTrendingCourses();

  Repository();
}
