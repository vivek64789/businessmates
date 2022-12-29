part of 'manage_course_lesson_cubit.dart';

@freezed
class ManageCourseLessonState with _$ManageCourseLessonState {
  const factory ManageCourseLessonState({
    required bool isInProgress,
    required Option<ManageCourseLessonFailure> failureMessageOption,
    required LoadingStatus manageCourseLessonLoadingStatus,
    required List<CourseLessonModel> lessons,
    required CourseLessonModel courseLessonModel,
  }) = _ManageCourseLessonState;

  factory ManageCourseLessonState.empty() => ManageCourseLessonState(
        failureMessageOption: none(),
        isInProgress: false,
        manageCourseLessonLoadingStatus: LoadingStatus.initial,
        lessons: [],
        courseLessonModel: CourseLessonModel.empty(),
      );
}
