// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseLessonModel _$CourseLessonModelFromJson(Map<String, dynamic> json) {
  return _CourseLessonModel.fromJson(json);
}

/// @nodoc
mixin _$CourseLessonModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "short_description")
  String get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "video_url")
  String get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "is_locked")
  bool get isLocked => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_id")
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseLessonModelCopyWith<CourseLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseLessonModelCopyWith<$Res> {
  factory $CourseLessonModelCopyWith(
          CourseLessonModel value, $Res Function(CourseLessonModel) then) =
      _$CourseLessonModelCopyWithImpl<$Res, CourseLessonModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "video_url") String videoUrl,
      @JsonKey(name: "image_url") String imageUrl,
      String duration,
      @JsonKey(name: "is_locked") bool isLocked,
      @JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "course_id") String courseId,
      @JsonKey(name: "category_id") String categoryId});
}

/// @nodoc
class _$CourseLessonModelCopyWithImpl<$Res, $Val extends CourseLessonModel>
    implements $CourseLessonModelCopyWith<$Res> {
  _$CourseLessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? videoUrl = null,
    Object? imageUrl = null,
    Object? duration = null,
    Object? isLocked = null,
    Object? sectionId = null,
    Object? courseId = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseLessonModelCopyWith<$Res>
    implements $CourseLessonModelCopyWith<$Res> {
  factory _$$_CourseLessonModelCopyWith(_$_CourseLessonModel value,
          $Res Function(_$_CourseLessonModel) then) =
      __$$_CourseLessonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "video_url") String videoUrl,
      @JsonKey(name: "image_url") String imageUrl,
      String duration,
      @JsonKey(name: "is_locked") bool isLocked,
      @JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "course_id") String courseId,
      @JsonKey(name: "category_id") String categoryId});
}

/// @nodoc
class __$$_CourseLessonModelCopyWithImpl<$Res>
    extends _$CourseLessonModelCopyWithImpl<$Res, _$_CourseLessonModel>
    implements _$$_CourseLessonModelCopyWith<$Res> {
  __$$_CourseLessonModelCopyWithImpl(
      _$_CourseLessonModel _value, $Res Function(_$_CourseLessonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? videoUrl = null,
    Object? imageUrl = null,
    Object? duration = null,
    Object? isLocked = null,
    Object? sectionId = null,
    Object? courseId = null,
    Object? categoryId = null,
  }) {
    return _then(_$_CourseLessonModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseLessonModel extends _CourseLessonModel {
  const _$_CourseLessonModel(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: "short_description") required this.shortDescription,
      @JsonKey(name: "video_url") required this.videoUrl,
      @JsonKey(name: "image_url") required this.imageUrl,
      required this.duration,
      @JsonKey(name: "is_locked") required this.isLocked,
      @JsonKey(name: "section_id") required this.sectionId,
      @JsonKey(name: "course_id") required this.courseId,
      @JsonKey(name: "category_id") required this.categoryId})
      : super._();

  factory _$_CourseLessonModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseLessonModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: "short_description")
  final String shortDescription;
  @override
  @JsonKey(name: "video_url")
  final String videoUrl;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  final String duration;
  @override
  @JsonKey(name: "is_locked")
  final bool isLocked;
  @override
  @JsonKey(name: "section_id")
  final String sectionId;
  @override
  @JsonKey(name: "course_id")
  final String courseId;
  @override
  @JsonKey(name: "category_id")
  final String categoryId;

  @override
  String toString() {
    return 'CourseLessonModel(id: $id, name: $name, description: $description, shortDescription: $shortDescription, videoUrl: $videoUrl, imageUrl: $imageUrl, duration: $duration, isLocked: $isLocked, sectionId: $sectionId, courseId: $courseId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseLessonModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      shortDescription,
      videoUrl,
      imageUrl,
      duration,
      isLocked,
      sectionId,
      courseId,
      categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseLessonModelCopyWith<_$_CourseLessonModel> get copyWith =>
      __$$_CourseLessonModelCopyWithImpl<_$_CourseLessonModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseLessonModelToJson(
      this,
    );
  }
}

abstract class _CourseLessonModel extends CourseLessonModel {
  const factory _CourseLessonModel(
      {required final String id,
      required final String name,
      required final String description,
      @JsonKey(name: "short_description")
          required final String shortDescription,
      @JsonKey(name: "video_url")
          required final String videoUrl,
      @JsonKey(name: "image_url")
          required final String imageUrl,
      required final String duration,
      @JsonKey(name: "is_locked")
          required final bool isLocked,
      @JsonKey(name: "section_id")
          required final String sectionId,
      @JsonKey(name: "course_id")
          required final String courseId,
      @JsonKey(name: "category_id")
          required final String categoryId}) = _$_CourseLessonModel;
  const _CourseLessonModel._() : super._();

  factory _CourseLessonModel.fromJson(Map<String, dynamic> json) =
      _$_CourseLessonModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: "short_description")
  String get shortDescription;
  @override
  @JsonKey(name: "video_url")
  String get videoUrl;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  String get duration;
  @override
  @JsonKey(name: "is_locked")
  bool get isLocked;
  @override
  @JsonKey(name: "section_id")
  String get sectionId;
  @override
  @JsonKey(name: "course_id")
  String get courseId;
  @override
  @JsonKey(name: "category_id")
  String get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_CourseLessonModelCopyWith<_$_CourseLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
