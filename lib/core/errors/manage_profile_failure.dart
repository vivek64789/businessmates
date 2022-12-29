import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_profile_failure.freezed.dart';

@freezed
class ManageProfileFailure with _$ManageProfileFailure {
  const factory ManageProfileFailure.serverError({String? message}) =
      _ServerError;
  const factory ManageProfileFailure.noInternetConnection({String? message}) =
      _NoInternetConnection;
  const factory ManageProfileFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory ManageProfileFailure.deviceNotSupported({String? message}) =
      _DeviceNotSupported;

  const factory ManageProfileFailure.unexpectedError({String? message}) =
      _UnexpectedError;
  const factory ManageProfileFailure.unableToUpdate({String? message}) =
      _UnableToUpdate;
  const factory ManageProfileFailure.unableToDelete({String? message}) =
      _UnableToDelete;
  const factory ManageProfileFailure.unableToCreate({String? message}) =
      _UnableToCreate;
  const factory ManageProfileFailure.unableToGet({String? message}) =
      _UnableToGet;
  const factory ManageProfileFailure.unableToGetAll({String? message}) =
      _UnableToGetAll;
  // already exists
  const factory ManageProfileFailure.alreadyExists({String? message}) =
      _AlreadyExists;
  // not found
  const factory ManageProfileFailure.notFound({String? message}) = _NotFound;
}
