import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError({String? message}) = _ServerError;
  const factory AuthFailure.noInternetConnection({String? message}) =
      _NoInternetConnection;
  const factory AuthFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory AuthFailure.deviceNotSupported({String? message}) =
      _DeviceNotSupported;
  const factory AuthFailure.smsTimeout({String? message}) = _SmsTimeout;
  const factory AuthFailure.sessionExpired({String? message}) = _SessionExpired;
  const factory AuthFailure.invalidVerificationCode({String? message}) =
      _InvalidVerificationCode;
  const factory AuthFailure.invalidEmailAddress({String? message}) =
      _InvalidEmailAddress;
  // week password
  const factory AuthFailure.weakPassword({String? message}) = _WeakPassword;
  // invalid action code
  const factory AuthFailure.invalidActionCode({String? message}) =
      _InvalidActionCode;
  const factory AuthFailure.emailAlreadyInUse({String? message}) =
      _EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination(
      {String? message}) = _InvalidEmailAndPasswordCombination;

  const factory AuthFailure.userNotFound({String? message}) = _UserNotFound;
  const factory AuthFailure.requiresRecentLogin({String? message}) =
      _RequiresRecentLogin;
}
