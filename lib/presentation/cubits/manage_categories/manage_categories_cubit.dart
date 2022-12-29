import '../../../core/errors/manage_categories_failure.dart';
import '../../../data/models/course/course_model.dart';
import '../../../data/models/course_categories_model.dart';
import '../../../di/injector.dart';
import '../../../domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_categories_state.dart';
part 'manage_categories_cubit.freezed.dart';

@LazySingleton()
class ManageCategoriesCubit extends Cubit<ManageCategoriesState> {
  late final Repository _repository;

  ManageCategoriesCubit() : super(ManageCategoriesState.empty()) {
    _repository = repository;
  }

  // getCourseCategories
  Future<void> getCourseCategories() async {
    emit(state.copyWith(manageCategoriesLoadingStatus: LoadingStatus.loading));
    final result = await _repository.getAllCourseCategories();

    result.fold(
      (failure) => emit(state.copyWith(
          manageCategoriesLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure))),
      (categories) => emit(
        state.copyWith(
          manageCategoriesLoadingStatus: LoadingStatus.loaded,
          categories: categories,
        ),
      ),
    );
  }

  Stream<List<CategoriesModel>> streamAllCourseCategories() async* {
    yield* _repository.streamAllCourseCategories();
  }


  // courses
  Stream<List<CourseModel>> streamAllCourseOfCategories(
      {required String categoryId}) async* {
    yield* _repository.streamAllCourseOfCategories(categoryId: categoryId);
  }
}
