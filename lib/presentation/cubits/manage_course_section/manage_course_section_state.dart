part of 'manage_course_section_cubit.dart';

@freezed
class ManageCourseSectionState with _$ManageCourseSectionState {
  const factory ManageCourseSectionState({
    required bool isInProgress,
    required Option<ManageCourseSectionFailure> failureMessageOption,
    required LoadingStatus manageCourseSectionLoadingStatus,
    required List<CourseSectionModel> sections,
    required CourseSectionModel courseSectionModel,
  }) = _ManageCourseSectionState;

  factory ManageCourseSectionState.empty() => ManageCourseSectionState(
        failureMessageOption: none(),
        isInProgress: false,
        manageCourseSectionLoadingStatus: LoadingStatus.initial,
        sections: [],
        courseSectionModel: CourseSectionModel.empty(),
      );
}
