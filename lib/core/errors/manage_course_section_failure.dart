import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_course_section_failure.freezed.dart';

@freezed
class ManageCourseSectionFailure with _$ManageCourseSectionFailure {
  const factory ManageCourseSectionFailure.serverError({String? message}) =
      _ServerError;
  const factory ManageCourseSectionFailure.noInternetConnection({String? message}) =
      _NoInternetConnection;
  const factory ManageCourseSectionFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory ManageCourseSectionFailure.deviceNotSupported({String? message}) =
      _DeviceNotSupported;

  const factory ManageCourseSectionFailure.unexpectedError({String? message}) =
      _UnexpectedError;
  const factory ManageCourseSectionFailure.unableToUpdate({String? message}) =
      _UnableToUpdate;
  const factory ManageCourseSectionFailure.unableToDelete({String? message}) =
      _UnableToDelete;
  const factory ManageCourseSectionFailure.unableToCreate({String? message}) =
      _UnableToCreate;
  const factory ManageCourseSectionFailure.unableToGet({String? message}) =
      _UnableToGet;
  const factory ManageCourseSectionFailure.unableToGetAll({String? message}) =
      _UnableToGetAll;
  // already exists
  const factory ManageCourseSectionFailure.alreadyExists({String? message}) =
      _AlreadyExists;
  // not found
  const factory ManageCourseSectionFailure.notFound({String? message}) = _NotFound;
}
