part of 'auth_cubit.dart';


@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isInProgress,
    required bool isAppFirstTime,
    required bool isAppFirstTimeChecking,
    required AuthUserModel userModel,
    required bool isUserLoggedIn,
    required User? currentLoggedInUser,
    required String emailCode,
    required Option<String> verificationIdOption,
    required Option<AuthFailure> failureMessageOption,
    required bool isCodeSent,
    required LoadingStatus loginLoadingStatus,
    required LoadingStatus registerLoadingStatus,
    required LoadingStatus verifyOTPLoadingStatus,
  }) = _AuthState;

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isAppFirstTime: true,
        isUserLoggedIn: false,
        isAppFirstTimeChecking: true,
        emailCode: '',
        verificationIdOption: none(),
        failureMessageOption: none(),
        isCodeSent: false,
        isInProgress: false,
        currentLoggedInUser: firebaseAuth.currentUser,
        loginLoadingStatus: LoadingStatus.initial,
        registerLoadingStatus: LoadingStatus.initial,
        verifyOTPLoadingStatus: LoadingStatus.initial,
      );
}
