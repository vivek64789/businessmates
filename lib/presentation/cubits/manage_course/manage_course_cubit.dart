import '../../../data/models/course/course_model.dart';
import '../../../di/injector.dart';
import '../../../domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/manage_course_failure.dart';
import '../manage_categories/manage_categories_cubit.dart';

part 'manage_course_state.dart';
part 'manage_course_cubit.freezed.dart';

@LazySingleton()
class ManageCourseCubit extends Cubit<ManageCourseState> {
  late final Repository _repository;

  ManageCourseCubit() : super(ManageCourseState.empty()) {
    _repository = repository;
  }

  // set courseModel
  void setCourseModel(CourseModel courseModel) {
    emit(state.copyWith(
      courseModel: courseModel,
      manageCoursesLoadingStatus: LoadingStatus.initial,
    ));
  }

  // stream all courses of a category
  Stream<List<CourseModel>> streamAllCoursesOfCategory(
      {required String categoryId}) async* {
    yield* _repository.streamAllCourseOfCategories(categoryId: categoryId);
  }

  Stream<List<CourseModel>> streamAllCourses() async* {
    yield* _repository.streamAllCourses();
  }

  // void setSelectedFeaturedCourse({required CourseModel courseModel}) {
  //   emit(state.copyWith(
  //     selectedFeaturedCourse: courseModel,
  //     manageCoursesLoadingStatus: LoadingStatus.initial,
  //   ));
  // }

  // get all courses of category
  Future<void> getAllCoursesOfCategory({required String categoryId}) async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllCoursesOfCategory(categoryId: categoryId);
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          coursesOfCategory: courses,
        ),
      ),
    );
  }

  // enroll course
  Future<void> enrollCourse(
      {required CourseModel course, required String userId}) async {
    emit(state.copyWith(
      enrollCourseLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, Unit> failureOrCourses =
        await _repository.enrollCourse(course: course, userId: userId);
    failureOrCourses.fold(
      (ManageCourseFailure failure) {
        emit(state.copyWith(
          enrollCourseLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ));
      },
      (Unit unit) {
        emit(state.copyWith(
          enrollCourseLoadingStatus: LoadingStatus.loaded,
        ));
      },
    );
  }

  // get enrolled courses
  Future<void> getEnrolledCourses({required String userId}) async {
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getEnrolledCourses(userId: userId);
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) {
          return state;
        },
        (List<CourseModel> courses) => state.copyWith(
          userEnrolledCourses: courses,
        ),
      ),
    );
  }

  // get all featured courses
  Future<void> getAllFeaturedCourses() async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllFeaturedCourses();
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          featuredCourses: courses,
        ),
      ),
    );
  }

  // get all new courses
  Future<void> getAllNewCourses() async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllNewCourses();
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          newCourses: courses,
        ),
      ),
    );
  }

  // get all trending courses
  Future<void> getAllTrendingCourses() async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllTrendingCourses();
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          trendingCourses: courses,
        ),
      ),
    );
  }

  // get all popular courses
  Future<void> getAllPopularCourses() async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllPopularCourses();
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          popularCourses: courses,
        ),
      ),
    );
  }

  // get all free courses
  Future<void> getAllFreeCourses() async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllFreeCourses();
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          freeCourses: courses,
        ),
      ),
    );
  }

  // get all free courses
  Future<void> getAllCourses() async {
    emit(state.copyWith(
      manageCoursesLoadingStatus: LoadingStatus.loading,
    ));
    final Either<ManageCourseFailure, List<CourseModel>> failureOrCourses =
        await _repository.getAllCourses();
    failureOrCourses.fold((l) {}, (r) {
      emit(state.copyWith(allCourses: r));
    });
    emit(
      failureOrCourses.fold(
        (ManageCourseFailure failure) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure),
        ),
        (List<CourseModel> courses) => state.copyWith(
          manageCoursesLoadingStatus: LoadingStatus.loaded,
          allCourses: courses,
        ),
      ),
    );
  }
}
