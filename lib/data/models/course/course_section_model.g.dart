// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseSectionModel _$$_CourseSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_CourseSectionModel(
      name: json['name'] as String,
      shortDescription: json['short_description'] as String,
      courseId: json['course_id'] as String,
      isLocked: json['is_locked'] as bool,
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map((e) => CourseLessonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryId: json['category_id'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_CourseSectionModelToJson(
        _$_CourseSectionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_description': instance.shortDescription,
      'course_id': instance.courseId,
      'is_locked': instance.isLocked,
      'lessons': instance.lessons,
      'category_id': instance.categoryId,
      'id': instance.id,
    };
