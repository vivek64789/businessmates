import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_course_failure.freezed.dart';

@freezed
class ManageCourseFailure with _$ManageCourseFailure {
  const factory ManageCourseFailure.serverError({String? message}) =
      _ServerError;
  const factory ManageCourseFailure.noInternetConnection({String? message}) =
      _NoInternetConnection;
  const factory ManageCourseFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory ManageCourseFailure.deviceNotSupported({String? message}) =
      _DeviceNotSupported;

  const factory ManageCourseFailure.unexpectedError({String? message}) =
      _UnexpectedError;
  const factory ManageCourseFailure.unableToUpdate({String? message}) =
      _UnableToUpdate;
  const factory ManageCourseFailure.unableToDelete({String? message}) =
      _UnableToDelete;
  const factory ManageCourseFailure.unableToCreate({String? message}) =
      _UnableToCreate;
  const factory ManageCourseFailure.unableToGet({String? message}) =
      _UnableToGet;
  const factory ManageCourseFailure.unableToGetAll({String? message}) =
      _UnableToGetAll;
  // already exists
  const factory ManageCourseFailure.alreadyExists({String? message}) =
      _AlreadyExists;
  // not found
  const factory ManageCourseFailure.notFound({String? message}) = _NotFound;
}
