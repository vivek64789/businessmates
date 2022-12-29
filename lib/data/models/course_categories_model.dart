import 'package:freezed_annotation/freezed_annotation.dart';

import 'course/course_model.dart';

part 'course_categories_model.freezed.dart';
part 'course_categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required String id,
    required String name,
    required String description,
    @JsonKey(name: "image_url") required String imageUrl,
    List<CourseModel>? courses,
  }) = _CategoriesModel;

  const CategoriesModel._();

  factory CategoriesModel.empty() => const CategoriesModel(
        id: '',
        imageUrl: "",
        description: '',
        name: '',
        courses: [],
      );

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
