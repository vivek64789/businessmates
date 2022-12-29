import '../../../core/errors/manage_profile_failure.dart';
import '../../../data/models/user_profile_model.dart';
import '../../../di/injector.dart';
import '../../../domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../manage_categories/manage_categories_cubit.dart';

part 'manage_profile_state.dart';
part 'manage_profile_cubit.freezed.dart';

@LazySingleton()
class ManageProfileCubit extends Cubit<ManageProfileState> {
  late final Repository _repository;

  ManageProfileCubit() : super(ManageProfileState.empty()) {
    _repository = repository;
  }

  // set courseModel
  void setUserProfileModel(UserProfileModel userProfileModel) {
    emit(state.copyWith(
      userProfileModel: userProfileModel,
      manageProfileLoadingStatus: LoadingStatus.initial,
    ));
  }

  Future<void> updateProfile({
    required UserProfileModel userProfileModel,
  }) async {
    emit(state.copyWith(manageProfileLoadingStatus: LoadingStatus.loading));
    final result = await _repository.updateUserProfile(
      userProfile: userProfileModel,
    );

    result.fold(
      (failure) => emit(state.copyWith(
          manageProfileLoadingStatus: LoadingStatus.error,
          failureMessageOption: some(failure))),
      (category) => emit(
        state.copyWith(
          manageProfileLoadingStatus: LoadingStatus.loaded,
        ),
      ),
    );
  }

  // // deleteCourseCategory
  // Future<void> deleteCourse({
  //   required CourseModel courseModel,
  // }) async {
  //   emit(state.copyWith(manageProfileLoadingStatus: LoadingStatus.loading));
  //   final result = await _repository.deleteCourse(
  //     courseModel: courseModel,
  //   );

  //   result.fold(
  //     (failure) => emit(state.copyWith(
  //         manageCoursesLoadingStatus: LoadingStatus.error,
  //         failureMessageOption: some(failure))),
  //     (category) => emit(
  //       state.copyWith(
  //         manageCoursesLoadingStatus: LoadingStatus.loaded,
  //       ),
  //     ),
  //   );
  // }

  // stream all courses of a category
  Stream<UserProfileModel> streamUserProfile({required String uid}) async* {
    yield* _repository.streamUserProfile(uid: uid);
  }
}
