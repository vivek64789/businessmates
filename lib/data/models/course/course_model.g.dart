// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      categoryId: json['category_id'] as String,
      price: (json['price'] as num).toDouble(),
      isFree: json['is_free'] as bool,
      isFeatured: json['is_featured'] as bool,
      isTrending: json['is_trending'] as bool,
      isNew: json['is_new'] as bool,
      isBestSeller: json['is_popular'] as bool,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => CourseSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'category_id': instance.categoryId,
      'price': instance.price,
      'is_free': instance.isFree,
      'is_featured': instance.isFeatured,
      'is_trending': instance.isTrending,
      'is_new': instance.isNew,
      'is_popular': instance.isBestSeller,
      'sections': instance.sections,
    };
