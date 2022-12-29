// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageProfileState {
  Option<ManageProfileFailure> get failureMessageOption =>
      throw _privateConstructorUsedError;
  LoadingStatus get manageProfileLoadingStatus =>
      throw _privateConstructorUsedError;
  UserProfileModel get userProfileModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageProfileStateCopyWith<ManageProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageProfileStateCopyWith<$Res> {
  factory $ManageProfileStateCopyWith(
          ManageProfileState value, $Res Function(ManageProfileState) then) =
      _$ManageProfileStateCopyWithImpl<$Res, ManageProfileState>;
  @useResult
  $Res call(
      {Option<ManageProfileFailure> failureMessageOption,
      LoadingStatus manageProfileLoadingStatus,
      UserProfileModel userProfileModel});

  $UserProfileModelCopyWith<$Res> get userProfileModel;
}

/// @nodoc
class _$ManageProfileStateCopyWithImpl<$Res, $Val extends ManageProfileState>
    implements $ManageProfileStateCopyWith<$Res> {
  _$ManageProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessageOption = null,
    Object? manageProfileLoadingStatus = null,
    Object? userProfileModel = null,
  }) {
    return _then(_value.copyWith(
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageProfileFailure>,
      manageProfileLoadingStatus: null == manageProfileLoadingStatus
          ? _value.manageProfileLoadingStatus
          : manageProfileLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      userProfileModel: null == userProfileModel
          ? _value.userProfileModel
          : userProfileModel // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get userProfileModel {
    return $UserProfileModelCopyWith<$Res>(_value.userProfileModel, (value) {
      return _then(_value.copyWith(userProfileModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ManageProfileStateCopyWith<$Res>
    implements $ManageProfileStateCopyWith<$Res> {
  factory _$$_ManageProfileStateCopyWith(_$_ManageProfileState value,
          $Res Function(_$_ManageProfileState) then) =
      __$$_ManageProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<ManageProfileFailure> failureMessageOption,
      LoadingStatus manageProfileLoadingStatus,
      UserProfileModel userProfileModel});

  @override
  $UserProfileModelCopyWith<$Res> get userProfileModel;
}

/// @nodoc
class __$$_ManageProfileStateCopyWithImpl<$Res>
    extends _$ManageProfileStateCopyWithImpl<$Res, _$_ManageProfileState>
    implements _$$_ManageProfileStateCopyWith<$Res> {
  __$$_ManageProfileStateCopyWithImpl(
      _$_ManageProfileState _value, $Res Function(_$_ManageProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessageOption = null,
    Object? manageProfileLoadingStatus = null,
    Object? userProfileModel = null,
  }) {
    return _then(_$_ManageProfileState(
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageProfileFailure>,
      manageProfileLoadingStatus: null == manageProfileLoadingStatus
          ? _value.manageProfileLoadingStatus
          : manageProfileLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      userProfileModel: null == userProfileModel
          ? _value.userProfileModel
          : userProfileModel // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }
}

/// @nodoc

class _$_ManageProfileState implements _ManageProfileState {
  const _$_ManageProfileState(
      {required this.failureMessageOption,
      required this.manageProfileLoadingStatus,
      required this.userProfileModel});

  @override
  final Option<ManageProfileFailure> failureMessageOption;
  @override
  final LoadingStatus manageProfileLoadingStatus;
  @override
  final UserProfileModel userProfileModel;

  @override
  String toString() {
    return 'ManageProfileState(failureMessageOption: $failureMessageOption, manageProfileLoadingStatus: $manageProfileLoadingStatus, userProfileModel: $userProfileModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManageProfileState &&
            (identical(other.failureMessageOption, failureMessageOption) ||
                other.failureMessageOption == failureMessageOption) &&
            (identical(other.manageProfileLoadingStatus,
                    manageProfileLoadingStatus) ||
                other.manageProfileLoadingStatus ==
                    manageProfileLoadingStatus) &&
            (identical(other.userProfileModel, userProfileModel) ||
                other.userProfileModel == userProfileModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessageOption,
      manageProfileLoadingStatus, userProfileModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManageProfileStateCopyWith<_$_ManageProfileState> get copyWith =>
      __$$_ManageProfileStateCopyWithImpl<_$_ManageProfileState>(
          this, _$identity);
}

abstract class _ManageProfileState implements ManageProfileState {
  const factory _ManageProfileState(
          {required final Option<ManageProfileFailure> failureMessageOption,
          required final LoadingStatus manageProfileLoadingStatus,
          required final UserProfileModel userProfileModel}) =
      _$_ManageProfileState;

  @override
  Option<ManageProfileFailure> get failureMessageOption;
  @override
  LoadingStatus get manageProfileLoadingStatus;
  @override
  UserProfileModel get userProfileModel;
  @override
  @JsonKey(ignore: true)
  _$$_ManageProfileStateCopyWith<_$_ManageProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
