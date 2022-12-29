import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_categories_failure.freezed.dart';

@freezed
class ManageCategoriesFailure with _$ManageCategoriesFailure {
  const factory ManageCategoriesFailure.serverError({String? message}) =
      _ServerError;
  const factory ManageCategoriesFailure.noInternetConnection(
      {String? message}) = _NoInternetConnection;
  const factory ManageCategoriesFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory ManageCategoriesFailure.deviceNotSupported({String? message}) =
      _DeviceNotSupported;
  const factory ManageCategoriesFailure.categoryAlreadyExists({String? message}) =
      _CategoryAlreadyExists;
  const factory ManageCategoriesFailure.noCategoriesFound({String? message}) =
      _NoCategoriesFound;
}
