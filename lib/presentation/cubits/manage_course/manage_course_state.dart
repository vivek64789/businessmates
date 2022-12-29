part of 'manage_course_cubit.dart';

@freezed
class ManageCourseState with _$ManageCourseState {
  const factory ManageCourseState({
    required bool isInProgress,
    required Option<ManageCourseFailure> failureMessageOption,
    required LoadingStatus manageCoursesLoadingStatus,
    required List<CourseModel> courses,
    required CourseModel courseModel,
  }) = _ManageCourseState;

  factory ManageCourseState.empty() => ManageCourseState(
        failureMessageOption: none(),
        isInProgress: false,
        manageCoursesLoadingStatus: LoadingStatus.initial,
        courses: [],
        courseModel: CourseModel.empty(),
      );
}
