// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_upload_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageUploadFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) unableToUploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? unableToUploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? unableToUploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_UnableToUploadImage value) unableToUploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_UnableToUploadImage value)? unableToUploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_UnableToUploadImage value)? unableToUploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageUploadFailureCopyWith<ImageUploadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadFailureCopyWith<$Res> {
  factory $ImageUploadFailureCopyWith(
          ImageUploadFailure value, $Res Function(ImageUploadFailure) then) =
      _$ImageUploadFailureCopyWithImpl<$Res, ImageUploadFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ImageUploadFailureCopyWithImpl<$Res, $Val extends ImageUploadFailure>
    implements $ImageUploadFailureCopyWith<$Res> {
  _$ImageUploadFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageUploadFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) unableToUploadImage,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? unableToUploadImage,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_UnableToUploadImage value) unableToUploadImage,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_UnableToUploadImage value)? unableToUploadImage,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_UnableToUploadImage value)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ImageUploadFailure {
  const factory _ServerError({final String? message}) = _$_ServerError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TooManyRequestsCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$_TooManyRequestsCopyWith(
          _$_TooManyRequests value, $Res Function(_$_TooManyRequests) then) =
      __$$_TooManyRequestsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_TooManyRequestsCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res, _$_TooManyRequests>
    implements _$$_TooManyRequestsCopyWith<$Res> {
  __$$_TooManyRequestsCopyWithImpl(
      _$_TooManyRequests _value, $Res Function(_$_TooManyRequests) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_TooManyRequests(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TooManyRequests implements _TooManyRequests {
  const _$_TooManyRequests({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageUploadFailure.tooManyRequests(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TooManyRequests &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TooManyRequestsCopyWith<_$_TooManyRequests> get copyWith =>
      __$$_TooManyRequestsCopyWithImpl<_$_TooManyRequests>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) unableToUploadImage,
  }) {
    return tooManyRequests(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? unableToUploadImage,
  }) {
    return tooManyRequests?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_UnableToUploadImage value) unableToUploadImage,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_UnableToUploadImage value)? unableToUploadImage,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_UnableToUploadImage value)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests implements ImageUploadFailure {
  const factory _TooManyRequests({final String? message}) = _$_TooManyRequests;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_TooManyRequestsCopyWith<_$_TooManyRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetConnectionCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$_NoInternetConnectionCopyWith(_$_NoInternetConnection value,
          $Res Function(_$_NoInternetConnection) then) =
      __$$_NoInternetConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_NoInternetConnectionCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res, _$_NoInternetConnection>
    implements _$$_NoInternetConnectionCopyWith<$Res> {
  __$$_NoInternetConnectionCopyWithImpl(_$_NoInternetConnection _value,
      $Res Function(_$_NoInternetConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NoInternetConnection(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NoInternetConnection implements _NoInternetConnection {
  const _$_NoInternetConnection({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageUploadFailure.noInternetConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoInternetConnection &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoInternetConnectionCopyWith<_$_NoInternetConnection> get copyWith =>
      __$$_NoInternetConnectionCopyWithImpl<_$_NoInternetConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) unableToUploadImage,
  }) {
    return noInternetConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? unableToUploadImage,
  }) {
    return noInternetConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_UnableToUploadImage value) unableToUploadImage,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_UnableToUploadImage value)? unableToUploadImage,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_UnableToUploadImage value)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements ImageUploadFailure {
  const factory _NoInternetConnection({final String? message}) =
      _$_NoInternetConnection;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoInternetConnectionCopyWith<_$_NoInternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnableToUploadImageCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$_UnableToUploadImageCopyWith(_$_UnableToUploadImage value,
          $Res Function(_$_UnableToUploadImage) then) =
      __$$_UnableToUploadImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_UnableToUploadImageCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res, _$_UnableToUploadImage>
    implements _$$_UnableToUploadImageCopyWith<$Res> {
  __$$_UnableToUploadImageCopyWithImpl(_$_UnableToUploadImage _value,
      $Res Function(_$_UnableToUploadImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UnableToUploadImage(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnableToUploadImage implements _UnableToUploadImage {
  const _$_UnableToUploadImage({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageUploadFailure.unableToUploadImage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnableToUploadImage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnableToUploadImageCopyWith<_$_UnableToUploadImage> get copyWith =>
      __$$_UnableToUploadImageCopyWithImpl<_$_UnableToUploadImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) unableToUploadImage,
  }) {
    return unableToUploadImage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? unableToUploadImage,
  }) {
    return unableToUploadImage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (unableToUploadImage != null) {
      return unableToUploadImage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_UnableToUploadImage value) unableToUploadImage,
  }) {
    return unableToUploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_UnableToUploadImage value)? unableToUploadImage,
  }) {
    return unableToUploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_UnableToUploadImage value)? unableToUploadImage,
    required TResult orElse(),
  }) {
    if (unableToUploadImage != null) {
      return unableToUploadImage(this);
    }
    return orElse();
  }
}

abstract class _UnableToUploadImage implements ImageUploadFailure {
  const factory _UnableToUploadImage({final String? message}) =
      _$_UnableToUploadImage;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnableToUploadImageCopyWith<_$_UnableToUploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}
