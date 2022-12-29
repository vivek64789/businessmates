import '../../../core/errors/manage_course_lesson_failure.dart';
import '../../../data/models/course/course_lesson_model.dart';
import '../../../data/models/course/course_section_model.dart';
import '../../../di/injector.dart';
import '../../../domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../manage_categories/manage_categories_cubit.dart';

part 'manage_course_lesson_state.dart';
part 'manage_course_lesson_cubit.freezed.dart';

@LazySingleton()
class ManageCourseLessonCubit extends Cubit<ManageCourseLessonState> {
  late final Repository _repository;

  ManageCourseLessonCubit() : super(ManageCourseLessonState.empty()) {
    _repository = repository;
  }

  // set courseModel
  void setCourseLessonModel(CourseLessonModel courseLessonModel) {
    emit(state.copyWith(
      courseLessonModel: courseLessonModel,
      manageCourseLessonLoadingStatus: LoadingStatus.initial,
    ));
  }

  // stream all courses of a category
  Stream<List<CourseLessonModel>> streamAllLessonOfSection(
      {required CourseSectionModel courseSectionModel}) async* {
    yield* _repository.streamAllLessonOfSection(
        courseSectionModel: courseSectionModel);
  }
}
