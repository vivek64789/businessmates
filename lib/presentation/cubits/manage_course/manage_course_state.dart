part of 'manage_course_cubit.dart';

@freezed
class ManageCourseState with _$ManageCourseState {
  const factory ManageCourseState({
    required bool isInProgress,
    required Option<ManageCourseFailure> failureMessageOption,
    required LoadingStatus manageCoursesLoadingStatus,
    required LoadingStatus enrollCourseLoadingStatus,
    required List<CourseModel> courses,
    required List<CourseModel> coursesOfCategory,
    required List<CourseModel> userEnrolledCourses,
    required List<CourseModel> featuredCourses,
    required List<CourseModel> freeCourses,
    required List<CourseModel> popularCourses,
    required List<CourseModel> trendingCourses,
    required List<CourseModel> newCourses,
    required List<CourseModel> allCourses,
    required CourseModel courseModel,
    required CourseModel selectedFeaturedCourse,
  }) = _ManageCourseState;

  factory ManageCourseState.empty() => ManageCourseState(
        failureMessageOption: none(),
        isInProgress: false,
        manageCoursesLoadingStatus: LoadingStatus.initial,
        courses: [],
        courseModel: CourseModel.empty(),
        selectedFeaturedCourse: CourseModel.empty(),
        coursesOfCategory: [],
        enrollCourseLoadingStatus: LoadingStatus.initial,
        userEnrolledCourses: [],
        featuredCourses: [],
        freeCourses: [],
        newCourses: [],
        popularCourses: [],
        trendingCourses: [],
        allCourses: [],
      );
}
