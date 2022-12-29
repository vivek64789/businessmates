// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_course_section_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageCourseSectionState {
  bool get isInProgress => throw _privateConstructorUsedError;
  Option<ManageCourseSectionFailure> get failureMessageOption =>
      throw _privateConstructorUsedError;
  LoadingStatus get manageCourseSectionLoadingStatus =>
      throw _privateConstructorUsedError;
  List<CourseSectionModel> get sections => throw _privateConstructorUsedError;
  CourseSectionModel get courseSectionModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageCourseSectionStateCopyWith<ManageCourseSectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCourseSectionStateCopyWith<$Res> {
  factory $ManageCourseSectionStateCopyWith(ManageCourseSectionState value,
          $Res Function(ManageCourseSectionState) then) =
      _$ManageCourseSectionStateCopyWithImpl<$Res, ManageCourseSectionState>;
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCourseSectionFailure> failureMessageOption,
      LoadingStatus manageCourseSectionLoadingStatus,
      List<CourseSectionModel> sections,
      CourseSectionModel courseSectionModel});

  $CourseSectionModelCopyWith<$Res> get courseSectionModel;
}

/// @nodoc
class _$ManageCourseSectionStateCopyWithImpl<$Res,
        $Val extends ManageCourseSectionState>
    implements $ManageCourseSectionStateCopyWith<$Res> {
  _$ManageCourseSectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCourseSectionLoadingStatus = null,
    Object? sections = null,
    Object? courseSectionModel = null,
  }) {
    return _then(_value.copyWith(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCourseSectionFailure>,
      manageCourseSectionLoadingStatus: null == manageCourseSectionLoadingStatus
          ? _value.manageCourseSectionLoadingStatus
          : manageCourseSectionLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CourseSectionModel>,
      courseSectionModel: null == courseSectionModel
          ? _value.courseSectionModel
          : courseSectionModel // ignore: cast_nullable_to_non_nullable
              as CourseSectionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseSectionModelCopyWith<$Res> get courseSectionModel {
    return $CourseSectionModelCopyWith<$Res>(_value.courseSectionModel,
        (value) {
      return _then(_value.copyWith(courseSectionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ManageCourseSectionStateCopyWith<$Res>
    implements $ManageCourseSectionStateCopyWith<$Res> {
  factory _$$_ManageCourseSectionStateCopyWith(
          _$_ManageCourseSectionState value,
          $Res Function(_$_ManageCourseSectionState) then) =
      __$$_ManageCourseSectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCourseSectionFailure> failureMessageOption,
      LoadingStatus manageCourseSectionLoadingStatus,
      List<CourseSectionModel> sections,
      CourseSectionModel courseSectionModel});

  @override
  $CourseSectionModelCopyWith<$Res> get courseSectionModel;
}

/// @nodoc
class __$$_ManageCourseSectionStateCopyWithImpl<$Res>
    extends _$ManageCourseSectionStateCopyWithImpl<$Res,
        _$_ManageCourseSectionState>
    implements _$$_ManageCourseSectionStateCopyWith<$Res> {
  __$$_ManageCourseSectionStateCopyWithImpl(_$_ManageCourseSectionState _value,
      $Res Function(_$_ManageCourseSectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCourseSectionLoadingStatus = null,
    Object? sections = null,
    Object? courseSectionModel = null,
  }) {
    return _then(_$_ManageCourseSectionState(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCourseSectionFailure>,
      manageCourseSectionLoadingStatus: null == manageCourseSectionLoadingStatus
          ? _value.manageCourseSectionLoadingStatus
          : manageCourseSectionLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CourseSectionModel>,
      courseSectionModel: null == courseSectionModel
          ? _value.courseSectionModel
          : courseSectionModel // ignore: cast_nullable_to_non_nullable
              as CourseSectionModel,
    ));
  }
}

/// @nodoc

class _$_ManageCourseSectionState implements _ManageCourseSectionState {
  const _$_ManageCourseSectionState(
      {required this.isInProgress,
      required this.failureMessageOption,
      required this.manageCourseSectionLoadingStatus,
      required final List<CourseSectionModel> sections,
      required this.courseSectionModel})
      : _sections = sections;

  @override
  final bool isInProgress;
  @override
  final Option<ManageCourseSectionFailure> failureMessageOption;
  @override
  final LoadingStatus manageCourseSectionLoadingStatus;
  final List<CourseSectionModel> _sections;
  @override
  List<CourseSectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final CourseSectionModel courseSectionModel;

  @override
  String toString() {
    return 'ManageCourseSectionState(isInProgress: $isInProgress, failureMessageOption: $failureMessageOption, manageCourseSectionLoadingStatus: $manageCourseSectionLoadingStatus, sections: $sections, courseSectionModel: $courseSectionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManageCourseSectionState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.failureMessageOption, failureMessageOption) ||
                other.failureMessageOption == failureMessageOption) &&
            (identical(other.manageCourseSectionLoadingStatus,
                    manageCourseSectionLoadingStatus) ||
                other.manageCourseSectionLoadingStatus ==
                    manageCourseSectionLoadingStatus) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.courseSectionModel, courseSectionModel) ||
                other.courseSectionModel == courseSectionModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      failureMessageOption,
      manageCourseSectionLoadingStatus,
      const DeepCollectionEquality().hash(_sections),
      courseSectionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManageCourseSectionStateCopyWith<_$_ManageCourseSectionState>
      get copyWith => __$$_ManageCourseSectionStateCopyWithImpl<
          _$_ManageCourseSectionState>(this, _$identity);
}

abstract class _ManageCourseSectionState implements ManageCourseSectionState {
  const factory _ManageCourseSectionState(
      {required final bool isInProgress,
      required final Option<ManageCourseSectionFailure> failureMessageOption,
      required final LoadingStatus manageCourseSectionLoadingStatus,
      required final List<CourseSectionModel> sections,
      required final CourseSectionModel
          courseSectionModel}) = _$_ManageCourseSectionState;

  @override
  bool get isInProgress;
  @override
  Option<ManageCourseSectionFailure> get failureMessageOption;
  @override
  LoadingStatus get manageCourseSectionLoadingStatus;
  @override
  List<CourseSectionModel> get sections;
  @override
  CourseSectionModel get courseSectionModel;
  @override
  @JsonKey(ignore: true)
  _$$_ManageCourseSectionStateCopyWith<_$_ManageCourseSectionState>
      get copyWith => throw _privateConstructorUsedError;
}
