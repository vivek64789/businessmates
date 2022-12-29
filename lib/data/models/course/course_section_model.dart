import 'course_lesson_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_section_model.freezed.dart';
part 'course_section_model.g.dart';

@freezed
class CourseSectionModel with _$CourseSectionModel {
  const factory CourseSectionModel(
      {required String name,
      @JsonKey(name: "short_description") required String shortDescription,
      @JsonKey(name: "course_id") required String courseId,
      @JsonKey(name: "is_locked") required bool isLocked,
      List<CourseLessonModel>? lessons,
      @JsonKey(name: "category_id") required String categoryId,
      required String id}) = _CourseSectionModel;

  const CourseSectionModel._();

  factory CourseSectionModel.empty() => const CourseSectionModel(
        id: '',
        name: '',
        shortDescription: '',
        courseId: '',
        isLocked: true,
        lessons: [],
        categoryId: '',
      );

  factory CourseSectionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseSectionModelFromJson(json);
}
