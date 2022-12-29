part of 'manage_profile_cubit.dart';

@freezed
class ManageProfileState with _$ManageProfileState {
  const factory ManageProfileState({
    required Option<ManageProfileFailure> failureMessageOption,
    required LoadingStatus manageProfileLoadingStatus,
    required UserProfileModel userProfileModel,
  }) = _ManageProfileState;

  factory ManageProfileState.empty() => ManageProfileState(
        failureMessageOption: none(),
        manageProfileLoadingStatus: LoadingStatus.initial,
        userProfileModel: UserProfileModel.empty(),
      );
}
