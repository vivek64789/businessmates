// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_course_lesson_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageCourseLessonState {
  bool get isInProgress => throw _privateConstructorUsedError;
  Option<ManageCourseLessonFailure> get failureMessageOption =>
      throw _privateConstructorUsedError;
  LoadingStatus get manageCourseLessonLoadingStatus =>
      throw _privateConstructorUsedError;
  List<CourseLessonModel> get lessons => throw _privateConstructorUsedError;
  CourseLessonModel get courseLessonModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageCourseLessonStateCopyWith<ManageCourseLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCourseLessonStateCopyWith<$Res> {
  factory $ManageCourseLessonStateCopyWith(ManageCourseLessonState value,
          $Res Function(ManageCourseLessonState) then) =
      _$ManageCourseLessonStateCopyWithImpl<$Res, ManageCourseLessonState>;
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCourseLessonFailure> failureMessageOption,
      LoadingStatus manageCourseLessonLoadingStatus,
      List<CourseLessonModel> lessons,
      CourseLessonModel courseLessonModel});

  $CourseLessonModelCopyWith<$Res> get courseLessonModel;
}

/// @nodoc
class _$ManageCourseLessonStateCopyWithImpl<$Res,
        $Val extends ManageCourseLessonState>
    implements $ManageCourseLessonStateCopyWith<$Res> {
  _$ManageCourseLessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCourseLessonLoadingStatus = null,
    Object? lessons = null,
    Object? courseLessonModel = null,
  }) {
    return _then(_value.copyWith(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCourseLessonFailure>,
      manageCourseLessonLoadingStatus: null == manageCourseLessonLoadingStatus
          ? _value.manageCourseLessonLoadingStatus
          : manageCourseLessonLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<CourseLessonModel>,
      courseLessonModel: null == courseLessonModel
          ? _value.courseLessonModel
          : courseLessonModel // ignore: cast_nullable_to_non_nullable
              as CourseLessonModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseLessonModelCopyWith<$Res> get courseLessonModel {
    return $CourseLessonModelCopyWith<$Res>(_value.courseLessonModel, (value) {
      return _then(_value.copyWith(courseLessonModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ManageCourseLessonStateCopyWith<$Res>
    implements $ManageCourseLessonStateCopyWith<$Res> {
  factory _$$_ManageCourseLessonStateCopyWith(_$_ManageCourseLessonState value,
          $Res Function(_$_ManageCourseLessonState) then) =
      __$$_ManageCourseLessonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCourseLessonFailure> failureMessageOption,
      LoadingStatus manageCourseLessonLoadingStatus,
      List<CourseLessonModel> lessons,
      CourseLessonModel courseLessonModel});

  @override
  $CourseLessonModelCopyWith<$Res> get courseLessonModel;
}

/// @nodoc
class __$$_ManageCourseLessonStateCopyWithImpl<$Res>
    extends _$ManageCourseLessonStateCopyWithImpl<$Res,
        _$_ManageCourseLessonState>
    implements _$$_ManageCourseLessonStateCopyWith<$Res> {
  __$$_ManageCourseLessonStateCopyWithImpl(_$_ManageCourseLessonState _value,
      $Res Function(_$_ManageCourseLessonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCourseLessonLoadingStatus = null,
    Object? lessons = null,
    Object? courseLessonModel = null,
  }) {
    return _then(_$_ManageCourseLessonState(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCourseLessonFailure>,
      manageCourseLessonLoadingStatus: null == manageCourseLessonLoadingStatus
          ? _value.manageCourseLessonLoadingStatus
          : manageCourseLessonLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<CourseLessonModel>,
      courseLessonModel: null == courseLessonModel
          ? _value.courseLessonModel
          : courseLessonModel // ignore: cast_nullable_to_non_nullable
              as CourseLessonModel,
    ));
  }
}

/// @nodoc

class _$_ManageCourseLessonState implements _ManageCourseLessonState {
  const _$_ManageCourseLessonState(
      {required this.isInProgress,
      required this.failureMessageOption,
      required this.manageCourseLessonLoadingStatus,
      required final List<CourseLessonModel> lessons,
      required this.courseLessonModel})
      : _lessons = lessons;

  @override
  final bool isInProgress;
  @override
  final Option<ManageCourseLessonFailure> failureMessageOption;
  @override
  final LoadingStatus manageCourseLessonLoadingStatus;
  final List<CourseLessonModel> _lessons;
  @override
  List<CourseLessonModel> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  final CourseLessonModel courseLessonModel;

  @override
  String toString() {
    return 'ManageCourseLessonState(isInProgress: $isInProgress, failureMessageOption: $failureMessageOption, manageCourseLessonLoadingStatus: $manageCourseLessonLoadingStatus, lessons: $lessons, courseLessonModel: $courseLessonModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManageCourseLessonState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.failureMessageOption, failureMessageOption) ||
                other.failureMessageOption == failureMessageOption) &&
            (identical(other.manageCourseLessonLoadingStatus,
                    manageCourseLessonLoadingStatus) ||
                other.manageCourseLessonLoadingStatus ==
                    manageCourseLessonLoadingStatus) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.courseLessonModel, courseLessonModel) ||
                other.courseLessonModel == courseLessonModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      failureMessageOption,
      manageCourseLessonLoadingStatus,
      const DeepCollectionEquality().hash(_lessons),
      courseLessonModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManageCourseLessonStateCopyWith<_$_ManageCourseLessonState>
      get copyWith =>
          __$$_ManageCourseLessonStateCopyWithImpl<_$_ManageCourseLessonState>(
              this, _$identity);
}

abstract class _ManageCourseLessonState implements ManageCourseLessonState {
  const factory _ManageCourseLessonState(
          {required final bool isInProgress,
          required final Option<ManageCourseLessonFailure> failureMessageOption,
          required final LoadingStatus manageCourseLessonLoadingStatus,
          required final List<CourseLessonModel> lessons,
          required final CourseLessonModel courseLessonModel}) =
      _$_ManageCourseLessonState;

  @override
  bool get isInProgress;
  @override
  Option<ManageCourseLessonFailure> get failureMessageOption;
  @override
  LoadingStatus get manageCourseLessonLoadingStatus;
  @override
  List<CourseLessonModel> get lessons;
  @override
  CourseLessonModel get courseLessonModel;
  @override
  @JsonKey(ignore: true)
  _$$_ManageCourseLessonStateCopyWith<_$_ManageCourseLessonState>
      get copyWith => throw _privateConstructorUsedError;
}
