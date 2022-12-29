// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageCategoriesState {
  bool get isInProgress => throw _privateConstructorUsedError;
  Option<ManageCategoriesFailure> get failureMessageOption =>
      throw _privateConstructorUsedError;
  LoadingStatus get manageCategoriesLoadingStatus =>
      throw _privateConstructorUsedError;
  List<CategoriesModel> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageCategoriesStateCopyWith<ManageCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCategoriesStateCopyWith<$Res> {
  factory $ManageCategoriesStateCopyWith(ManageCategoriesState value,
          $Res Function(ManageCategoriesState) then) =
      _$ManageCategoriesStateCopyWithImpl<$Res, ManageCategoriesState>;
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCategoriesFailure> failureMessageOption,
      LoadingStatus manageCategoriesLoadingStatus,
      List<CategoriesModel> categories});
}

/// @nodoc
class _$ManageCategoriesStateCopyWithImpl<$Res,
        $Val extends ManageCategoriesState>
    implements $ManageCategoriesStateCopyWith<$Res> {
  _$ManageCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCategoriesLoadingStatus = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCategoriesFailure>,
      manageCategoriesLoadingStatus: null == manageCategoriesLoadingStatus
          ? _value.manageCategoriesLoadingStatus
          : manageCategoriesLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManageCategoriesStateCopyWith<$Res>
    implements $ManageCategoriesStateCopyWith<$Res> {
  factory _$$_ManageCategoriesStateCopyWith(_$_ManageCategoriesState value,
          $Res Function(_$_ManageCategoriesState) then) =
      __$$_ManageCategoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInProgress,
      Option<ManageCategoriesFailure> failureMessageOption,
      LoadingStatus manageCategoriesLoadingStatus,
      List<CategoriesModel> categories});
}

/// @nodoc
class __$$_ManageCategoriesStateCopyWithImpl<$Res>
    extends _$ManageCategoriesStateCopyWithImpl<$Res, _$_ManageCategoriesState>
    implements _$$_ManageCategoriesStateCopyWith<$Res> {
  __$$_ManageCategoriesStateCopyWithImpl(_$_ManageCategoriesState _value,
      $Res Function(_$_ManageCategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
    Object? failureMessageOption = null,
    Object? manageCategoriesLoadingStatus = null,
    Object? categories = null,
  }) {
    return _then(_$_ManageCategoriesState(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessageOption: null == failureMessageOption
          ? _value.failureMessageOption
          : failureMessageOption // ignore: cast_nullable_to_non_nullable
              as Option<ManageCategoriesFailure>,
      manageCategoriesLoadingStatus: null == manageCategoriesLoadingStatus
          ? _value.manageCategoriesLoadingStatus
          : manageCategoriesLoadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ));
  }
}

/// @nodoc

class _$_ManageCategoriesState implements _ManageCategoriesState {
  const _$_ManageCategoriesState(
      {required this.isInProgress,
      required this.failureMessageOption,
      required this.manageCategoriesLoadingStatus,
      required final List<CategoriesModel> categories})
      : _categories = categories;

  @override
  final bool isInProgress;
  @override
  final Option<ManageCategoriesFailure> failureMessageOption;
  @override
  final LoadingStatus manageCategoriesLoadingStatus;
  final List<CategoriesModel> _categories;
  @override
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ManageCategoriesState(isInProgress: $isInProgress, failureMessageOption: $failureMessageOption, manageCategoriesLoadingStatus: $manageCategoriesLoadingStatus, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManageCategoriesState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.failureMessageOption, failureMessageOption) ||
                other.failureMessageOption == failureMessageOption) &&
            (identical(other.manageCategoriesLoadingStatus,
                    manageCategoriesLoadingStatus) ||
                other.manageCategoriesLoadingStatus ==
                    manageCategoriesLoadingStatus) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      failureMessageOption,
      manageCategoriesLoadingStatus,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManageCategoriesStateCopyWith<_$_ManageCategoriesState> get copyWith =>
      __$$_ManageCategoriesStateCopyWithImpl<_$_ManageCategoriesState>(
          this, _$identity);
}

abstract class _ManageCategoriesState implements ManageCategoriesState {
  const factory _ManageCategoriesState(
          {required final bool isInProgress,
          required final Option<ManageCategoriesFailure> failureMessageOption,
          required final LoadingStatus manageCategoriesLoadingStatus,
          required final List<CategoriesModel> categories}) =
      _$_ManageCategoriesState;

  @override
  bool get isInProgress;
  @override
  Option<ManageCategoriesFailure> get failureMessageOption;
  @override
  LoadingStatus get manageCategoriesLoadingStatus;
  @override
  List<CategoriesModel> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_ManageCategoriesStateCopyWith<_$_ManageCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
