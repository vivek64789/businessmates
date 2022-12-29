import '../../../core/errors/manage_course_section_failure.dart';
import '../../../data/models/course/course_model.dart';
import '../../../data/models/course/course_section_model.dart';
import '../../../di/injector.dart';
import '../../../domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../manage_categories/manage_categories_cubit.dart';

part 'manage_course_section_state.dart';
part 'manage_course_section_cubit.freezed.dart';

@LazySingleton()
class ManageCourseSectionCubit extends Cubit<ManageCourseSectionState> {
  late final Repository _repository;

  ManageCourseSectionCubit() : super(ManageCourseSectionState.empty()) {
    _repository = repository;
  }

  // set courseModel
  void setCourseSectionModel(CourseSectionModel courseSectionModel) {
    emit(state.copyWith(
      courseSectionModel: courseSectionModel,
      manageCourseSectionLoadingStatus: LoadingStatus.initial,
    ));
  }

  // stream all courses of a category
  Stream<List<CourseSectionModel>> streamAllSectionsOfCourse(
      {required CourseModel courseModel}) async* {
    yield* _repository.streamAllSectionsOfCourse(courseModel: courseModel);
  }
}
