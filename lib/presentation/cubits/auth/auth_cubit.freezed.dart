// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isInProgress => throw _privateConstructorUsedError;
  bool get isAppFirstTime => throw _privateConstructorUsedError;
  bool get isAppFirstTimeChecking => throw _privateConstructorUsedError;
  AuthUserModel get userModel => throw _privateConstructorUsedError;
  bool get isUserLoggedIn => throw _privateConstructorUsedError;
  User? get currentLoggedInUser => throw _privateConstructorUsedError;
  String get emailCode => throw _privateConstructorUsedError;
  Option<String> get verificationIdOption => throw _privateConstructorUsedError;
  Option<AuthFailure> get failureMessageOption =>
      throw _privateConstructorUsedError;
  bool get isCodeSent => throw _privateConstructorUsedError;
  LoadingStatus get loginLoadingStatus => throw _privateConstructorUsedError;
  LoadingStatus get registerLoadingStatus => throw _privateConstructorUsedError;
  LoadingStatus get verifyOTPLoadingStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isInProgress,
      bool isAppFirstTime,
      bool isAppFirstTimeChecking,
      AuthUserModel userModel,
      bool isUserLoggedIn,
      User? currentLoggedInUser,
      String emailCode,
      Option<String> verificationIdOption,
      Option<AuthFailure> failureMessageOption,
      bool isCodeSent,
      LoadingStatus loginLoadingStatus,
      LoadingStatus registerLoadingStatus,
      LoadingStatus verifyOTPLoadingStatus});

  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? isAppFirstTime = null,
    Object? isAppFirstTimeChecking = null,
    Object? userModel = null,
    Object? isUserLoggedIn = null,
    Object? currentLoggedInUser = freezed,
    Object? emailCode = null,
    Object? verificationIdOption = null,
    Object? failureMessageOption = null,
    Object? isCodeSent = null,
    Object? loginLoadingStatus = null,
    Object? registerLoadingStatus = null,
    Object? verifyOTPLoadingStatus = null,
  }) {
    return _then(_value.copyWith(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppFirstTime: null == isAppFirstTime
          ? _value.isAppFirstTime
          : isAppFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppFirstTimeChecking: null == isAppFirstTimeChecking
          ? _value.isAppFirstTimeChecking
          : isAppFirstTimeChecking // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLoggedInUser: freezed == currentLoggedInUser
          ? _value.currentLoggedInUser
          : currentLoggedInUser // ignore: cast_nullable_to_non_nullable
              as User?,
      emailCode: null == emailCode
          ? _value.emailCode
          : emailCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      isCodeSent: null == isCodeSent
          ? _value.isCodeSent
          : isCodeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      loginLoadingStatus: null == loginLoadingStatus
          ? _value.loginLoadingStatus
          : loginLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      registerLoadingStatus: null == registerLoadingStatus
          ? _value.registerLoadingStatus
          : registerLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      verifyOTPLoadingStatus: null == verifyOTPLoadingStatus
          ? _value.verifyOTPLoadingStatus
          : verifyOTPLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserModelCopyWith<$Res> get userModel {
    return $AuthUserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInProgress,
      bool isAppFirstTime,
      bool isAppFirstTimeChecking,
      AuthUserModel userModel,
      bool isUserLoggedIn,
      User? currentLoggedInUser,
      String emailCode,
      Option<String> verificationIdOption,
      Option<AuthFailure> failureMessageOption,
      bool isCodeSent,
      LoadingStatus loginLoadingStatus,
      LoadingStatus registerLoadingStatus,
      LoadingStatus verifyOTPLoadingStatus});

  @override
  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? isAppFirstTime = null,
    Object? isAppFirstTimeChecking = null,
    Object? userModel = null,
    Object? isUserLoggedIn = null,
    Object? currentLoggedInUser = freezed,
    Object? emailCode = null,
    Object? verificationIdOption = null,
    Object? failureMessageOption = null,
    Object? isCodeSent = null,
    Object? loginLoadingStatus = null,
    Object? registerLoadingStatus = null,
    Object? verifyOTPLoadingStatus = null,
  }) {
    return _then(_$_AuthState(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppFirstTime: null == isAppFirstTime
          ? _value.isAppFirstTime
          : isAppFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppFirstTimeChecking: null == isAppFirstTimeChecking
          ? _value.isAppFirstTimeChecking
          : isAppFirstTimeChecking // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLoggedInUser: freezed == currentLoggedInUser
          ? _value.currentLoggedInUser
          : currentLoggedInUser // ignore: cast_nullable_to_non_nullable
              as User?,
      emailCode: null == emailCode
          ? _value.emailCode
          : emailCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      isCodeSent: null == isCodeSent
          ? _value.isCodeSent
          : isCodeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      loginLoadingStatus: null == loginLoadingStatus
          ? _value.loginLoadingStatus
          : loginLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      registerLoadingStatus: null == registerLoadingStatus
          ? _value.registerLoadingStatus
          : registerLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      verifyOTPLoadingStatus: null == verifyOTPLoadingStatus
          ? _value.verifyOTPLoadingStatus
          : verifyOTPLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isInProgress,
      required this.isAppFirstTime,
      required this.isAppFirstTimeChecking,
      required this.userModel,
      required this.isUserLoggedIn,
      required this.currentLoggedInUser,
      required this.emailCode,
      required this.verificationIdOption,
      required this.failureMessageOption,
      required this.isCodeSent,
      required this.loginLoadingStatus,
      required this.registerLoadingStatus,
      required this.verifyOTPLoadingStatus});

  @override
  final bool isInProgress;
  @override
  final bool isAppFirstTime;
  @override
  final bool isAppFirstTimeChecking;
  @override
  final AuthUserModel userModel;
  @override
  final bool isUserLoggedIn;
  @override
  final User? currentLoggedInUser;
  @override
  final String emailCode;
  @override
  final Option<String> verificationIdOption;
  @override
  final Option<AuthFailure> failureMessageOption;
  @override
  final bool isCodeSent;
  @override
  final LoadingStatus loginLoadingStatus;
  @override
  final LoadingStatus registerLoadingStatus;
  @override
  final LoadingStatus verifyOTPLoadingStatus;

  @override
  String toString() {
    return 'AuthState(isInProgress: $isInProgress, isAppFirstTime: $isAppFirstTime, isAppFirstTimeChecking: $isAppFirstTimeChecking, userModel: $userModel, isUserLoggedIn: $isUserLoggedIn, currentLoggedInUser: $currentLoggedInUser, emailCode: $emailCode, verificationIdOption: $verificationIdOption, failureMessageOption: $failureMessageOption, isCodeSent: $isCodeSent, loginLoadingStatus: $loginLoadingStatus, registerLoadingStatus: $registerLoadingStatus, verifyOTPLoadingStatus: $verifyOTPLoadingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.isAppFirstTime, isAppFirstTime) ||
                other.isAppFirstTime == isAppFirstTime) &&
            (identical(other.isAppFirstTimeChecking, isAppFirstTimeChecking) ||
                other.isAppFirstTimeChecking == isAppFirstTimeChecking) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.isUserLoggedIn, isUserLoggedIn) ||
                other.isUserLoggedIn == isUserLoggedIn) &&
            (identical(other.currentLoggedInUser, currentLoggedInUser) ||
                other.currentLoggedInUser == currentLoggedInUser) &&
            (identical(other.emailCode, emailCode) ||
                other.emailCode == emailCode) &&
            (identical(other.verificationIdOption, verificationIdOption) ||
                other.verificationIdOption == verificationIdOption) &&
            (identical(other.failureMessageOption, failureMessageOption) ||
                other.failureMessageOption == failureMessageOption) &&
            (identical(other.isCodeSent, isCodeSent) ||
                other.isCodeSent == isCodeSent) &&
            (identical(other.loginLoadingStatus, loginLoadingStatus) ||
                other.loginLoadingStatus == loginLoadingStatus) &&
            (identical(other.registerLoadingStatus, registerLoadingStatus) ||
                other.registerLoadingStatus == registerLoadingStatus) &&
            (identical(other.verifyOTPLoadingStatus, verifyOTPLoadingStatus) ||
                other.verifyOTPLoadingStatus == verifyOTPLoadingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      isAppFirstTime,
      isAppFirstTimeChecking,
      userModel,
      isUserLoggedIn,
      currentLoggedInUser,
      emailCode,
      verificationIdOption,
      failureMessageOption,
      isCodeSent,
      loginLoadingStatus,
      registerLoadingStatus,
      verifyOTPLoadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isInProgress,
      required final bool isAppFirstTime,
      required final bool isAppFirstTimeChecking,
      required final AuthUserModel userModel,
      required final bool isUserLoggedIn,
      required final User? currentLoggedInUser,
      required final String emailCode,
      required final Option<String> verificationIdOption,
      required final Option<AuthFailure> failureMessageOption,
      required final bool isCodeSent,
      required final LoadingStatus loginLoadingStatus,
      required final LoadingStatus registerLoadingStatus,
      required final LoadingStatus verifyOTPLoadingStatus}) = _$_AuthState;

  @override
  bool get isInProgress;
  @override
  bool get isAppFirstTime;
  @override
  bool get isAppFirstTimeChecking;
  @override
  AuthUserModel get userModel;
  @override
  bool get isUserLoggedIn;
  @override
  User? get currentLoggedInUser;
  @override
  String get emailCode;
  @override
  Option<String> get verificationIdOption;
  @override
  Option<AuthFailure> get failureMessageOption;
  @override
  bool get isCodeSent;
  @override
  LoadingStatus get loginLoadingStatus;
  @override
  LoadingStatus get registerLoadingStatus;
  @override
  LoadingStatus get verifyOTPLoadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
