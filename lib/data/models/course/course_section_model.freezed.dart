// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseSectionModel _$CourseSectionModelFromJson(Map<String, dynamic> json) {
  return _CourseSectionModel.fromJson(json);
}

/// @nodoc
mixin _$CourseSectionModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "short_description")
  String get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "course_id")
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_locked")
  bool get isLocked => throw _privateConstructorUsedError;
  List<CourseLessonModel>? get lessons => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String get categoryId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseSectionModelCopyWith<CourseSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSectionModelCopyWith<$Res> {
  factory $CourseSectionModelCopyWith(
          CourseSectionModel value, $Res Function(CourseSectionModel) then) =
      _$CourseSectionModelCopyWithImpl<$Res, CourseSectionModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "course_id") String courseId,
      @JsonKey(name: "is_locked") bool isLocked,
      List<CourseLessonModel>? lessons,
      @JsonKey(name: "category_id") String categoryId,
      String id});
}

/// @nodoc
class _$CourseSectionModelCopyWithImpl<$Res, $Val extends CourseSectionModel>
    implements $CourseSectionModelCopyWith<$Res> {
  _$CourseSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? courseId = null,
    Object? isLocked = null,
    Object? lessons = freezed,
    Object? categoryId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      lessons: freezed == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<CourseLessonModel>?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseSectionModelCopyWith<$Res>
    implements $CourseSectionModelCopyWith<$Res> {
  factory _$$_CourseSectionModelCopyWith(_$_CourseSectionModel value,
          $Res Function(_$_CourseSectionModel) then) =
      __$$_CourseSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "course_id") String courseId,
      @JsonKey(name: "is_locked") bool isLocked,
      List<CourseLessonModel>? lessons,
      @JsonKey(name: "category_id") String categoryId,
      String id});
}

/// @nodoc
class __$$_CourseSectionModelCopyWithImpl<$Res>
    extends _$CourseSectionModelCopyWithImpl<$Res, _$_CourseSectionModel>
    implements _$$_CourseSectionModelCopyWith<$Res> {
  __$$_CourseSectionModelCopyWithImpl(
      _$_CourseSectionModel _value, $Res Function(_$_CourseSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? courseId = null,
    Object? isLocked = null,
    Object? lessons = freezed,
    Object? categoryId = null,
    Object? id = null,
  }) {
    return _then(_$_CourseSectionModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      lessons: freezed == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<CourseLessonModel>?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseSectionModel extends _CourseSectionModel {
  const _$_CourseSectionModel(
      {required this.name,
      @JsonKey(name: "short_description") required this.shortDescription,
      @JsonKey(name: "course_id") required this.courseId,
      @JsonKey(name: "is_locked") required this.isLocked,
      final List<CourseLessonModel>? lessons,
      @JsonKey(name: "category_id") required this.categoryId,
      required this.id})
      : _lessons = lessons,
        super._();

  factory _$_CourseSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseSectionModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "short_description")
  final String shortDescription;
  @override
  @JsonKey(name: "course_id")
  final String courseId;
  @override
  @JsonKey(name: "is_locked")
  final bool isLocked;
  final List<CourseLessonModel>? _lessons;
  @override
  List<CourseLessonModel>? get lessons {
    final value = _lessons;
    if (value == null) return null;
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "category_id")
  final String categoryId;
  @override
  final String id;

  @override
  String toString() {
    return 'CourseSectionModel(name: $name, shortDescription: $shortDescription, courseId: $courseId, isLocked: $isLocked, lessons: $lessons, categoryId: $categoryId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseSectionModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, shortDescription, courseId,
      isLocked, const DeepCollectionEquality().hash(_lessons), categoryId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseSectionModelCopyWith<_$_CourseSectionModel> get copyWith =>
      __$$_CourseSectionModelCopyWithImpl<_$_CourseSectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseSectionModelToJson(
      this,
    );
  }
}

abstract class _CourseSectionModel extends CourseSectionModel {
  const factory _CourseSectionModel(
      {required final String name,
      @JsonKey(name: "short_description")
          required final String shortDescription,
      @JsonKey(name: "course_id")
          required final String courseId,
      @JsonKey(name: "is_locked")
          required final bool isLocked,
      final List<CourseLessonModel>? lessons,
      @JsonKey(name: "category_id")
          required final String categoryId,
      required final String id}) = _$_CourseSectionModel;
  const _CourseSectionModel._() : super._();

  factory _CourseSectionModel.fromJson(Map<String, dynamic> json) =
      _$_CourseSectionModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "short_description")
  String get shortDescription;
  @override
  @JsonKey(name: "course_id")
  String get courseId;
  @override
  @JsonKey(name: "is_locked")
  bool get isLocked;
  @override
  List<CourseLessonModel>? get lessons;
  @override
  @JsonKey(name: "category_id")
  String get categoryId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CourseSectionModelCopyWith<_$_CourseSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
