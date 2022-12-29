import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_upload_failure.freezed.dart';

@freezed
class ImageUploadFailure with _$ImageUploadFailure {
  const factory ImageUploadFailure.serverError({String? message}) =
      _ServerError;
  const factory ImageUploadFailure.tooManyRequests({String? message}) =
      _TooManyRequests;
  const factory ImageUploadFailure.noInternetConnection({String? message}) =
      _NoInternetConnection;
  // not able to upload imag
  const factory ImageUploadFailure.unableToUploadImage({String? message}) =
      _UnableToUploadImage;
}
