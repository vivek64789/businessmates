// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_course_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageCourseState {
  bool get isInProgress => throw _privateConstructorUsedError;
  Option<ManageCourseFailure> get failureMessageOption =>
      throw _privateConstructorUsedError;
  LoadingStatus get manageCoursesLoadingStatus =>
      throw _privateConstructorUsedError;
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  CourseModel get courseModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageCourseStateCopyWith<ManageCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCourseStateCopyWith<$Res> {
  factory $ManageCourseStateCopyWith(
          ManageCourseState value, $Res Function(ManageCourseState) then) =
      _$ManageCourseStateCopyWithImpl<$Res, ManageCourseState>;
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCourseFailure> failureMessageOption,
      LoadingStatus manageCoursesLoadingStatus,
      List<CourseModel> courses,
      CourseModel courseModel});

  $CourseModelCopyWith<$Res> get courseModel;
}

/// @nodoc
class _$ManageCourseStateCopyWithImpl<$Res, $Val extends ManageCourseState>
    implements $ManageCourseStateCopyWith<$Res> {
  _$ManageCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCoursesLoadingStatus = null,
    Object? courses = null,
    Object? courseModel = null,
  }) {
    return _then(_value.copyWith(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCourseFailure>,
      manageCoursesLoadingStatus: null == manageCoursesLoadingStatus
          ? _value.manageCoursesLoadingStatus
          : manageCoursesLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      courseModel: null == courseModel
          ? _value.courseModel
          : courseModel // ignore: cast_nullable_to_non_nullable
              as CourseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseModelCopyWith<$Res> get courseModel {
    return $CourseModelCopyWith<$Res>(_value.courseModel, (value) {
      return _then(_value.copyWith(courseModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ManageCourseStateCopyWith<$Res>
    implements $ManageCourseStateCopyWith<$Res> {
  factory _$$_ManageCourseStateCopyWith(_$_ManageCourseState value,
          $Res Function(_$_ManageCourseState) then) =
      __$$_ManageCourseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCourseFailure> failureMessageOption,
      LoadingStatus manageCoursesLoadingStatus,
      List<CourseModel> courses,
      CourseModel courseModel});

  @override
  $CourseModelCopyWith<$Res> get courseModel;
}

/// @nodoc
class __$$_ManageCourseStateCopyWithImpl<$Res>
    extends _$ManageCourseStateCopyWithImpl<$Res, _$_ManageCourseState>
    implements _$$_ManageCourseStateCopyWith<$Res> {
  __$$_ManageCourseStateCopyWithImpl(
      _$_ManageCourseState _value, $Res Function(_$_ManageCourseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCoursesLoadingStatus = null,
    Object? courses = null,
    Object? courseModel = null,
  }) {
    return _then(_$_ManageCourseState(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCourseFailure>,
      manageCoursesLoadingStatus: null == manageCoursesLoadingStatus
          ? _value.manageCoursesLoadingStatus
          : manageCoursesLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      courseModel: null == courseModel
          ? _value.courseModel
          : courseModel // ignore: cast_nullable_to_non_nullable
              as CourseModel,
    ));
  }
}

/// @nodoc

class _$_ManageCourseState implements _ManageCourseState {
  const _$_ManageCourseState(
      {required this.isInProgress,
      required this.failureMessageOption,
      required this.manageCoursesLoadingStatus,
      required final List<CourseModel> courses,
      required this.courseModel})
      : _courses = courses;

  @override
  final bool isInProgress;
  @override
  final Option<ManageCourseFailure> failureMessageOption;
  @override
  final LoadingStatus manageCoursesLoadingStatus;
  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final CourseModel courseModel;

  @override
  String toString() {
    return 'ManageCourseState(isInProgress: $isInProgress, failureMessageOption: $failureMessageOption, manageCoursesLoadingStatus: $manageCoursesLoadingStatus, courses: $courses, courseModel: $courseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManageCourseState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.failureMessageOption, failureMessageOption) ||
                other.failureMessageOption == failureMessageOption) &&
            (identical(other.manageCoursesLoadingStatus,
                    manageCoursesLoadingStatus) ||
                other.manageCoursesLoadingStatus ==
                    manageCoursesLoadingStatus) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.courseModel, courseModel) ||
                other.courseModel == courseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      failureMessageOption,
      manageCoursesLoadingStatus,
      const DeepCollectionEquality().hash(_courses),
      courseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManageCourseStateCopyWith<_$_ManageCourseState> get copyWith =>
      __$$_ManageCourseStateCopyWithImpl<_$_ManageCourseState>(
          this, _$identity);
}

abstract class _ManageCourseState implements ManageCourseState {
  const factory _ManageCourseState(
      {required final bool isInProgress,
      required final Option<ManageCourseFailure> failureMessageOption,
      required final LoadingStatus manageCoursesLoadingStatus,
      required final List<CourseModel> courses,
      required final CourseModel courseModel}) = _$_ManageCourseState;

  @override
  bool get isInProgress;
  @override
  Option<ManageCourseFailure> get failureMessageOption;
  @override
  LoadingStatus get manageCoursesLoadingStatus;
  @override
  List<CourseModel> get courses;
  @override
  CourseModel get courseModel;
  @override
  @JsonKey(ignore: true)
  _$$_ManageCourseStateCopyWith<_$_ManageCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
