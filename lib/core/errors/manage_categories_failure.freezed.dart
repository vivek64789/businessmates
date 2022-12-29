// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_categories_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageCategoriesFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageCategoriesFailureCopyWith<ManageCategoriesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCategoriesFailureCopyWith<$Res> {
  factory $ManageCategoriesFailureCopyWith(ManageCategoriesFailure value,
          $Res Function(ManageCategoriesFailure) then) =
      _$ManageCategoriesFailureCopyWithImpl<$Res, ManageCategoriesFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ManageCategoriesFailureCopyWithImpl<$Res,
        $Val extends ManageCategoriesFailure>
    implements $ManageCategoriesFailureCopyWith<$Res> {
  _$ManageCategoriesFailureCopyWithImpl(this._value, this._then);

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
    implements $ManageCategoriesFailureCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$ManageCategoriesFailureCopyWithImpl<$Res, _$_ServerError>
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
    return 'ManageCategoriesFailure.serverError(message: $message)';
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
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
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
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ManageCategoriesFailure {
  const factory _ServerError({final String? message}) = _$_ServerError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetConnectionCopyWith<$Res>
    implements $ManageCategoriesFailureCopyWith<$Res> {
  factory _$$_NoInternetConnectionCopyWith(_$_NoInternetConnection value,
          $Res Function(_$_NoInternetConnection) then) =
      __$$_NoInternetConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_NoInternetConnectionCopyWithImpl<$Res>
    extends _$ManageCategoriesFailureCopyWithImpl<$Res, _$_NoInternetConnection>
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
    return 'ManageCategoriesFailure.noInternetConnection(message: $message)';
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
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) {
    return noInternetConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) {
    return noInternetConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
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
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements ManageCategoriesFailure {
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
abstract class _$$_TooManyRequestsCopyWith<$Res>
    implements $ManageCategoriesFailureCopyWith<$Res> {
  factory _$$_TooManyRequestsCopyWith(
          _$_TooManyRequests value, $Res Function(_$_TooManyRequests) then) =
      __$$_TooManyRequestsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_TooManyRequestsCopyWithImpl<$Res>
    extends _$ManageCategoriesFailureCopyWithImpl<$Res, _$_TooManyRequests>
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
    return 'ManageCategoriesFailure.tooManyRequests(message: $message)';
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
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) {
    return tooManyRequests(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) {
    return tooManyRequests?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
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
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests implements ManageCategoriesFailure {
  const factory _TooManyRequests({final String? message}) = _$_TooManyRequests;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_TooManyRequestsCopyWith<_$_TooManyRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeviceNotSupportedCopyWith<$Res>
    implements $ManageCategoriesFailureCopyWith<$Res> {
  factory _$$_DeviceNotSupportedCopyWith(_$_DeviceNotSupported value,
          $Res Function(_$_DeviceNotSupported) then) =
      __$$_DeviceNotSupportedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_DeviceNotSupportedCopyWithImpl<$Res>
    extends _$ManageCategoriesFailureCopyWithImpl<$Res, _$_DeviceNotSupported>
    implements _$$_DeviceNotSupportedCopyWith<$Res> {
  __$$_DeviceNotSupportedCopyWithImpl(
      _$_DeviceNotSupported _value, $Res Function(_$_DeviceNotSupported) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_DeviceNotSupported(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeviceNotSupported implements _DeviceNotSupported {
  const _$_DeviceNotSupported({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ManageCategoriesFailure.deviceNotSupported(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceNotSupported &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceNotSupportedCopyWith<_$_DeviceNotSupported> get copyWith =>
      __$$_DeviceNotSupportedCopyWithImpl<_$_DeviceNotSupported>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) {
    return deviceNotSupported(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) {
    return deviceNotSupported?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (deviceNotSupported != null) {
      return deviceNotSupported(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) {
    return deviceNotSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) {
    return deviceNotSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (deviceNotSupported != null) {
      return deviceNotSupported(this);
    }
    return orElse();
  }
}

abstract class _DeviceNotSupported implements ManageCategoriesFailure {
  const factory _DeviceNotSupported({final String? message}) =
      _$_DeviceNotSupported;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceNotSupportedCopyWith<_$_DeviceNotSupported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryAlreadyExistsCopyWith<$Res>
    implements $ManageCategoriesFailureCopyWith<$Res> {
  factory _$$_CategoryAlreadyExistsCopyWith(_$_CategoryAlreadyExists value,
          $Res Function(_$_CategoryAlreadyExists) then) =
      __$$_CategoryAlreadyExistsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_CategoryAlreadyExistsCopyWithImpl<$Res>
    extends _$ManageCategoriesFailureCopyWithImpl<$Res,
        _$_CategoryAlreadyExists>
    implements _$$_CategoryAlreadyExistsCopyWith<$Res> {
  __$$_CategoryAlreadyExistsCopyWithImpl(_$_CategoryAlreadyExists _value,
      $Res Function(_$_CategoryAlreadyExists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_CategoryAlreadyExists(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CategoryAlreadyExists implements _CategoryAlreadyExists {
  const _$_CategoryAlreadyExists({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ManageCategoriesFailure.categoryAlreadyExists(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryAlreadyExists &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryAlreadyExistsCopyWith<_$_CategoryAlreadyExists> get copyWith =>
      __$$_CategoryAlreadyExistsCopyWithImpl<_$_CategoryAlreadyExists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) {
    return categoryAlreadyExists(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) {
    return categoryAlreadyExists?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (categoryAlreadyExists != null) {
      return categoryAlreadyExists(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) {
    return categoryAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) {
    return categoryAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (categoryAlreadyExists != null) {
      return categoryAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class _CategoryAlreadyExists implements ManageCategoriesFailure {
  const factory _CategoryAlreadyExists({final String? message}) =
      _$_CategoryAlreadyExists;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryAlreadyExistsCopyWith<_$_CategoryAlreadyExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoCategoriesFoundCopyWith<$Res>
    implements $ManageCategoriesFailureCopyWith<$Res> {
  factory _$$_NoCategoriesFoundCopyWith(_$_NoCategoriesFound value,
          $Res Function(_$_NoCategoriesFound) then) =
      __$$_NoCategoriesFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_NoCategoriesFoundCopyWithImpl<$Res>
    extends _$ManageCategoriesFailureCopyWithImpl<$Res, _$_NoCategoriesFound>
    implements _$$_NoCategoriesFoundCopyWith<$Res> {
  __$$_NoCategoriesFoundCopyWithImpl(
      _$_NoCategoriesFound _value, $Res Function(_$_NoCategoriesFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NoCategoriesFound(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NoCategoriesFound implements _NoCategoriesFound {
  const _$_NoCategoriesFound({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ManageCategoriesFailure.noCategoriesFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoCategoriesFound &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoCategoriesFoundCopyWith<_$_NoCategoriesFound> get copyWith =>
      __$$_NoCategoriesFoundCopyWithImpl<_$_NoCategoriesFound>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) noInternetConnection,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) deviceNotSupported,
    required TResult Function(String? message) categoryAlreadyExists,
    required TResult Function(String? message) noCategoriesFound,
  }) {
    return noCategoriesFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? noInternetConnection,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? deviceNotSupported,
    TResult? Function(String? message)? categoryAlreadyExists,
    TResult? Function(String? message)? noCategoriesFound,
  }) {
    return noCategoriesFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? noInternetConnection,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? deviceNotSupported,
    TResult Function(String? message)? categoryAlreadyExists,
    TResult Function(String? message)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (noCategoriesFound != null) {
      return noCategoriesFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_CategoryAlreadyExists value)
        categoryAlreadyExists,
    required TResult Function(_NoCategoriesFound value) noCategoriesFound,
  }) {
    return noCategoriesFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult? Function(_NoCategoriesFound value)? noCategoriesFound,
  }) {
    return noCategoriesFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_CategoryAlreadyExists value)? categoryAlreadyExists,
    TResult Function(_NoCategoriesFound value)? noCategoriesFound,
    required TResult orElse(),
  }) {
    if (noCategoriesFound != null) {
      return noCategoriesFound(this);
    }
    return orElse();
  }
}

abstract class _NoCategoriesFound implements ManageCategoriesFailure {
  const factory _NoCategoriesFound({final String? message}) =
      _$_NoCategoriesFound;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoCategoriesFoundCopyWith<_$_NoCategoriesFound> get copyWith =>
      throw _privateConstructorUsedError;
}
