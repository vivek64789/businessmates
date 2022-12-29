import 'course_section_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String name,
    required String description,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "category_id") required String categoryId,
    required double price,
    @JsonKey(name: "is_free") required bool isFree,
    @JsonKey(name: "is_featured") required bool isFeatured,
    @JsonKey(name: "is_trending") required bool isTrending,
    @JsonKey(name: "is_new") required bool isNew,
    @JsonKey(name: "is_popular") required bool isBestSeller,
    List<CourseSectionModel>? sections,
  }) = _CourseModel;

  const CourseModel._();

  factory CourseModel.empty() => const CourseModel(
        id: '',
        name: '',
        description: '',
        imageUrl: '',
        price: 0.0,
        isFree: false,
        isFeatured: false,
        isTrending: false,
        isNew: false,
        isBestSeller: false,
        sections: [],
        categoryId: '',
      );

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}



    // @JsonKey(name: "is_purchased") required bool isPurchased,
    // @JsonKey(name: "is_favorite") required bool isFavorite,
    // @JsonKey(name: "is_enrolled") required bool isEnrolled,
    // @JsonKey(name: "is_completed") required bool isCompleted,
