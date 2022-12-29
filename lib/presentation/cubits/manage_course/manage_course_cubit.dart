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
}
