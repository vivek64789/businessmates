import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_lesson_model.freezed.dart';
part 'course_lesson_model.g.dart';

@freezed
class CourseLessonModel with _$CourseLessonModel {
  const factory CourseLessonModel({
    required String id,
    required String name,
    required String description,
    @JsonKey(name: "short_description") required String shortDescription,
    @JsonKey(name: "video_url") required String videoUrl,
    @JsonKey(name: "image_url") required String imageUrl,
    required String duration,
    @JsonKey(name: "is_locked") required bool isLocked,
    @JsonKey(name: "section_id") required String sectionId,
    @JsonKey(name: "course_id") required String courseId,
    @JsonKey(name: "category_id") required String categoryId,
  }) = _CourseLessonModel;

  const CourseLessonModel._();

  factory CourseLessonModel.empty() => const CourseLessonModel(
        id: '',
        name: '',
        description: '',
        shortDescription: '',
        videoUrl: '',
        duration: '',
        sectionId: '',
        imageUrl: '',
        isLocked: true,
        courseId: '',
        categoryId: '',
      );

  factory CourseLessonModel.fromJson(Map<String, dynamic> json) =>
      _$CourseLessonModelFromJson(json);
}
