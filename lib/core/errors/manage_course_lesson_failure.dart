import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_course_lesson_failure.freezed.dart';

@freezed
class ManageCourseLessonFailure with _$ManageCourseLessonFailure {
  const factory ManageCourseLessonFailure.serverError({String? message}) =
      _ServerError;
  const factory ManageCourseLessonFailure.noInternetConnection(
      {String? message}) = _NoInternetConnection;
  const factory ManageCourseLessonFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory ManageCourseLessonFailure.deviceNotSupported(
      {String? message}) = _DeviceNotSupported;

  const factory ManageCourseLessonFailure.unexpectedError({String? message}) =
      _UnexpectedError;
  const factory ManageCourseLessonFailure.unableToUpdate({String? message}) =
      _UnableToUpdate;
  const factory ManageCourseLessonFailure.unableToDelete({String? message}) =
      _UnableToDelete;
  const factory ManageCourseLessonFailure.unableToCreate({String? message}) =
      _UnableToCreate;
  const factory ManageCourseLessonFailure.unableToGet({String? message}) =
      _UnableToGet;
  const factory ManageCourseLessonFailure.unableToGetAll({String? message}) =
      _UnableToGetAll;
  // already exists
  const factory ManageCourseLessonFailure.alreadyExists({String? message}) =
      _AlreadyExists;
  // not found
  const factory ManageCourseLessonFailure.notFound({String? message}) =
      _NotFound;
}
