// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseLessonModel _$$_CourseLessonModelFromJson(Map<String, dynamic> json) =>
    _$_CourseLessonModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      shortDescription: json['short_description'] as String,
      videoUrl: json['video_url'] as String,
      imageUrl: json['image_url'] as String,
      duration: json['duration'] as String,
      isLocked: json['is_locked'] as bool,
      sectionId: json['section_id'] as String,
      courseId: json['course_id'] as String,
      categoryId: json['category_id'] as String,
      documentUrl: json['document_url'] as String,
    );

Map<String, dynamic> _$$_CourseLessonModelToJson(
        _$_CourseLessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'video_url': instance.videoUrl,
      'image_url': instance.imageUrl,
      'duration': instance.duration,
      'is_locked': instance.isLocked,
      'section_id': instance.sectionId,
      'course_id': instance.courseId,
      'category_id': instance.categoryId,
      'document_url': instance.documentUrl,
    };
