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
  LoadingStatus get enrollCourseLoadingStatus =>
      throw _privateConstructorUsedError;
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  List<CourseModel> get coursesOfCategory => throw _privateConstructorUsedError;
  List<CourseModel> get userEnrolledCourses =>
      throw _privateConstructorUsedError;
  List<CourseModel> get featuredCourses => throw _privateConstructorUsedError;
  List<CourseModel> get freeCourses => throw _privateConstructorUsedError;
  List<CourseModel> get popularCourses => throw _privateConstructorUsedError;
  List<CourseModel> get trendingCourses => throw _privateConstructorUsedError;
  List<CourseModel> get newCourses => throw _privateConstructorUsedError;
  List<CourseModel> get allCourses => throw _privateConstructorUsedError;
  CourseModel get courseModel => throw _privateConstructorUsedError;
  CourseModel get selectedFeaturedCourse => throw _privateConstructorUsedError;

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
      LoadingStatus enrollCourseLoadingStatus,
      List<CourseModel> courses,
      List<CourseModel> coursesOfCategory,
      List<CourseModel> userEnrolledCourses,
      List<CourseModel> featuredCourses,
      List<CourseModel> freeCourses,
      List<CourseModel> popularCourses,
      List<CourseModel> trendingCourses,
      List<CourseModel> newCourses,
      List<CourseModel> allCourses,
      CourseModel courseModel,
      CourseModel selectedFeaturedCourse});

  $CourseModelCopyWith<$Res> get courseModel;
  $CourseModelCopyWith<$Res> get selectedFeaturedCourse;
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
    Object? enrollCourseLoadingStatus = null,
    Object? courses = null,
    Object? coursesOfCategory = null,
    Object? userEnrolledCourses = null,
    Object? featuredCourses = null,
    Object? freeCourses = null,
    Object? popularCourses = null,
    Object? trendingCourses = null,
    Object? newCourses = null,
    Object? allCourses = null,
    Object? courseModel = null,
    Object? selectedFeaturedCourse = null,
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
      enrollCourseLoadingStatus: null == enrollCourseLoadingStatus
          ? _value.enrollCourseLoadingStatus
          : enrollCourseLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      coursesOfCategory: null == coursesOfCategory
          ? _value.coursesOfCategory
          : coursesOfCategory // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      userEnrolledCourses: null == userEnrolledCourses
          ? _value.userEnrolledCourses
          : userEnrolledCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      featuredCourses: null == featuredCourses
          ? _value.featuredCourses
          : featuredCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      freeCourses: null == freeCourses
          ? _value.freeCourses
          : freeCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      popularCourses: null == popularCourses
          ? _value.popularCourses
          : popularCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      trendingCourses: null == trendingCourses
          ? _value.trendingCourses
          : trendingCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      newCourses: null == newCourses
          ? _value.newCourses
          : newCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      allCourses: null == allCourses
          ? _value.allCourses
          : allCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      courseModel: null == courseModel
          ? _value.courseModel
          : courseModel // ignore: cast_nullable_to_non_nullable
              as CourseModel,
      selectedFeaturedCourse: null == selectedFeaturedCourse
          ? _value.selectedFeaturedCourse
          : selectedFeaturedCourse // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $CourseModelCopyWith<$Res> get selectedFeaturedCourse {
    return $CourseModelCopyWith<$Res>(_value.selectedFeaturedCourse, (value) {
      return _then(_value.copyWith(selectedFeaturedCourse: value) as $Val);
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
      LoadingStatus enrollCourseLoadingStatus,
      List<CourseModel> courses,
      List<CourseModel> coursesOfCategory,
      List<CourseModel> userEnrolledCourses,
      List<CourseModel> featuredCourses,
      List<CourseModel> freeCourses,
      List<CourseModel> popularCourses,
      List<CourseModel> trendingCourses,
      List<CourseModel> newCourses,
      List<CourseModel> allCourses,
      CourseModel courseModel,
      CourseModel selectedFeaturedCourse});

  @override
  $CourseModelCopyWith<$Res> get courseModel;
  @override
  $CourseModelCopyWith<$Res> get selectedFeaturedCourse;
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
    Object? enrollCourseLoadingStatus = null,
    Object? courses = null,
    Object? coursesOfCategory = null,
    Object? userEnrolledCourses = null,
    Object? featuredCourses = null,
    Object? freeCourses = null,
    Object? popularCourses = null,
    Object? trendingCourses = null,
    Object? newCourses = null,
    Object? allCourses = null,
    Object? courseModel = null,
    Object? selectedFeaturedCourse = null,
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
      enrollCourseLoadingStatus: null == enrollCourseLoadingStatus
          ? _value.enrollCourseLoadingStatus
          : enrollCourseLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      coursesOfCategory: null == coursesOfCategory
          ? _value._coursesOfCategory
          : coursesOfCategory // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      userEnrolledCourses: null == userEnrolledCourses
          ? _value._userEnrolledCourses
          : userEnrolledCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      featuredCourses: null == featuredCourses
          ? _value._featuredCourses
          : featuredCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      freeCourses: null == freeCourses
          ? _value._freeCourses
          : freeCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      popularCourses: null == popularCourses
          ? _value._popularCourses
          : popularCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      trendingCourses: null == trendingCourses
          ? _value._trendingCourses
          : trendingCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      newCourses: null == newCourses
          ? _value._newCourses
          : newCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      allCourses: null == allCourses
          ? _value._allCourses
          : allCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      courseModel: null == courseModel
          ? _value.courseModel
          : courseModel // ignore: cast_nullable_to_non_nullable
              as CourseModel,
      selectedFeaturedCourse: null == selectedFeaturedCourse
          ? _value.selectedFeaturedCourse
          : selectedFeaturedCourse // ignore: cast_nullable_to_non_nullable
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
      required this.enrollCourseLoadingStatus,
      required final List<CourseModel> courses,
      required final List<CourseModel> coursesOfCategory,
      required final List<CourseModel> userEnrolledCourses,
      required final List<CourseModel> featuredCourses,
      required final List<CourseModel> freeCourses,
      required final List<CourseModel> popularCourses,
      required final List<CourseModel> trendingCourses,
      required final List<CourseModel> newCourses,
      required final List<CourseModel> allCourses,
      required this.courseModel,
      required this.selectedFeaturedCourse})
      : _courses = courses,
        _coursesOfCategory = coursesOfCategory,
        _userEnrolledCourses = userEnrolledCourses,
        _featuredCourses = featuredCourses,
        _freeCourses = freeCourses,
        _popularCourses = popularCourses,
        _trendingCourses = trendingCourses,
        _newCourses = newCourses,
        _allCourses = allCourses;

  @override
  final bool isInProgress;
  @override
  final Option<ManageCourseFailure> failureMessageOption;
  @override
  final LoadingStatus manageCoursesLoadingStatus;
  @override
  final LoadingStatus enrollCourseLoadingStatus;
  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<CourseModel> _coursesOfCategory;
  @override
  List<CourseModel> get coursesOfCategory {
    if (_coursesOfCategory is EqualUnmodifiableListView)
      return _coursesOfCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursesOfCategory);
  }

  final List<CourseModel> _userEnrolledCourses;
  @override
  List<CourseModel> get userEnrolledCourses {
    if (_userEnrolledCourses is EqualUnmodifiableListView)
      return _userEnrolledCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userEnrolledCourses);
  }

  final List<CourseModel> _featuredCourses;
  @override
  List<CourseModel> get featuredCourses {
    if (_featuredCourses is EqualUnmodifiableListView) return _featuredCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredCourses);
  }

  final List<CourseModel> _freeCourses;
  @override
  List<CourseModel> get freeCourses {
    if (_freeCourses is EqualUnmodifiableListView) return _freeCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_freeCourses);
  }

  final List<CourseModel> _popularCourses;
  @override
  List<CourseModel> get popularCourses {
    if (_popularCourses is EqualUnmodifiableListView) return _popularCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCourses);
  }

  final List<CourseModel> _trendingCourses;
  @override
  List<CourseModel> get trendingCourses {
    if (_trendingCourses is EqualUnmodifiableListView) return _trendingCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingCourses);
  }

  final List<CourseModel> _newCourses;
  @override
  List<CourseModel> get newCourses {
    if (_newCourses is EqualUnmodifiableListView) return _newCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newCourses);
  }

  final List<CourseModel> _allCourses;
  @override
  List<CourseModel> get allCourses {
    if (_allCourses is EqualUnmodifiableListView) return _allCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCourses);
  }

  @override
  final CourseModel courseModel;
  @override
  final CourseModel selectedFeaturedCourse;

  @override
  String toString() {
    return 'ManageCourseState(isInProgress: $isInProgress, failureMessageOption: $failureMessageOption, manageCoursesLoadingStatus: $manageCoursesLoadingStatus, enrollCourseLoadingStatus: $enrollCourseLoadingStatus, courses: $courses, coursesOfCategory: $coursesOfCategory, userEnrolledCourses: $userEnrolledCourses, featuredCourses: $featuredCourses, freeCourses: $freeCourses, popularCourses: $popularCourses, trendingCourses: $trendingCourses, newCourses: $newCourses, allCourses: $allCourses, courseModel: $courseModel, selectedFeaturedCourse: $selectedFeaturedCourse)';
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
            (identical(other.enrollCourseLoadingStatus,
                    enrollCourseLoadingStatus) ||
                other.enrollCourseLoadingStatus == enrollCourseLoadingStatus) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._coursesOfCategory, _coursesOfCategory) &&
            const DeepCollectionEquality()
                .equals(other._userEnrolledCourses, _userEnrolledCourses) &&
            const DeepCollectionEquality()
                .equals(other._featuredCourses, _featuredCourses) &&
            const DeepCollectionEquality()
                .equals(other._freeCourses, _freeCourses) &&
            const DeepCollectionEquality()
                .equals(other._popularCourses, _popularCourses) &&
            const DeepCollectionEquality()
                .equals(other._trendingCourses, _trendingCourses) &&
            const DeepCollectionEquality()
                .equals(other._newCourses, _newCourses) &&
            const DeepCollectionEquality()
                .equals(other._allCourses, _allCourses) &&
            (identical(other.courseModel, courseModel) ||
                other.courseModel == courseModel) &&
            (identical(other.selectedFeaturedCourse, selectedFeaturedCourse) ||
                other.selectedFeaturedCourse == selectedFeaturedCourse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      failureMessageOption,
      manageCoursesLoadingStatus,
      enrollCourseLoadingStatus,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_coursesOfCategory),
      const DeepCollectionEquality().hash(_userEnrolledCourses),
      const DeepCollectionEquality().hash(_featuredCourses),
      const DeepCollectionEquality().hash(_freeCourses),
      const DeepCollectionEquality().hash(_popularCourses),
      const DeepCollectionEquality().hash(_trendingCourses),
      const DeepCollectionEquality().hash(_newCourses),
      const DeepCollectionEquality().hash(_allCourses),
      courseModel,
      selectedFeaturedCourse);

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
          required final LoadingStatus enrollCourseLoadingStatus,
          required final List<CourseModel> courses,
          required final List<CourseModel> coursesOfCategory,
          required final List<CourseModel> userEnrolledCourses,
          required final List<CourseModel> featuredCourses,
          required final List<CourseModel> freeCourses,
          required final List<CourseModel> popularCourses,
          required final List<CourseModel> trendingCourses,
          required final List<CourseModel> newCourses,
          required final List<CourseModel> allCourses,
          required final CourseModel courseModel,
          required final CourseModel selectedFeaturedCourse}) =
      _$_ManageCourseState;

  @override
  bool get isInProgress;
  @override
  Option<ManageCourseFailure> get failureMessageOption;
  @override
  LoadingStatus get manageCoursesLoadingStatus;
  @override
  LoadingStatus get enrollCourseLoadingStatus;
  @override
  List<CourseModel> get courses;
  @override
  List<CourseModel> get coursesOfCategory;
  @override
  List<CourseModel> get userEnrolledCourses;
  @override
  List<CourseModel> get featuredCourses;
  @override
  List<CourseModel> get freeCourses;
  @override
  List<CourseModel> get popularCourses;
  @override
  List<CourseModel> get trendingCourses;
  @override
  List<CourseModel> get newCourses;
  @override
  List<CourseModel> get allCourses;
  @override
  CourseModel get courseModel;
  @override
  CourseModel get selectedFeaturedCourse;
  @override
  @JsonKey(ignore: true)
  _$$_ManageCourseStateCopyWith<_$_ManageCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
