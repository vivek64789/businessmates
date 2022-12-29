// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String get categoryId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_featured")
  bool get isFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: "is_trending")
  bool get isTrending => throw _privateConstructorUsedError;
  @JsonKey(name: "is_new")
  bool get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: "is_popular")
  bool get isBestSeller => throw _privateConstructorUsedError;
  List<CourseSectionModel>? get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "category_id") String categoryId,
      double price,
      @JsonKey(name: "is_free") bool isFree,
      @JsonKey(name: "is_featured") bool isFeatured,
      @JsonKey(name: "is_trending") bool isTrending,
      @JsonKey(name: "is_new") bool isNew,
      @JsonKey(name: "is_popular") bool isBestSeller,
      List<CourseSectionModel>? sections});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? categoryId = null,
    Object? price = null,
    Object? isFree = null,
    Object? isFeatured = null,
    Object? isTrending = null,
    Object? isNew = null,
    Object? isBestSeller = null,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestSeller: null == isBestSeller
          ? _value.isBestSeller
          : isBestSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CourseSectionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "category_id") String categoryId,
      double price,
      @JsonKey(name: "is_free") bool isFree,
      @JsonKey(name: "is_featured") bool isFeatured,
      @JsonKey(name: "is_trending") bool isTrending,
      @JsonKey(name: "is_new") bool isNew,
      @JsonKey(name: "is_popular") bool isBestSeller,
      List<CourseSectionModel>? sections});
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$_CourseModel>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? categoryId = null,
    Object? price = null,
    Object? isFree = null,
    Object? isFeatured = null,
    Object? isTrending = null,
    Object? isNew = null,
    Object? isBestSeller = null,
    Object? sections = freezed,
  }) {
    return _then(_$_CourseModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestSeller: null == isBestSeller
          ? _value.isBestSeller
          : isBestSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CourseSectionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel extends _CourseModel {
  const _$_CourseModel(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: "image_url") required this.imageUrl,
      @JsonKey(name: "category_id") required this.categoryId,
      required this.price,
      @JsonKey(name: "is_free") required this.isFree,
      @JsonKey(name: "is_featured") required this.isFeatured,
      @JsonKey(name: "is_trending") required this.isTrending,
      @JsonKey(name: "is_new") required this.isNew,
      @JsonKey(name: "is_popular") required this.isBestSeller,
      final List<CourseSectionModel>? sections})
      : _sections = sections,
        super._();

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  @JsonKey(name: "category_id")
  final String categoryId;
  @override
  final double price;
  @override
  @JsonKey(name: "is_free")
  final bool isFree;
  @override
  @JsonKey(name: "is_featured")
  final bool isFeatured;
  @override
  @JsonKey(name: "is_trending")
  final bool isTrending;
  @override
  @JsonKey(name: "is_new")
  final bool isNew;
  @override
  @JsonKey(name: "is_popular")
  final bool isBestSeller;
  final List<CourseSectionModel>? _sections;
  @override
  List<CourseSectionModel>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl, categoryId: $categoryId, price: $price, isFree: $isFree, isFeatured: $isFeatured, isTrending: $isTrending, isNew: $isNew, isBestSeller: $isBestSeller, sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isBestSeller, isBestSeller) ||
                other.isBestSeller == isBestSeller) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      categoryId,
      price,
      isFree,
      isFeatured,
      isTrending,
      isNew,
      isBestSeller,
      const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(
      this,
    );
  }
}

abstract class _CourseModel extends CourseModel {
  const factory _CourseModel(
      {required final String id,
      required final String name,
      required final String description,
      @JsonKey(name: "image_url") required final String imageUrl,
      @JsonKey(name: "category_id") required final String categoryId,
      required final double price,
      @JsonKey(name: "is_free") required final bool isFree,
      @JsonKey(name: "is_featured") required final bool isFeatured,
      @JsonKey(name: "is_trending") required final bool isTrending,
      @JsonKey(name: "is_new") required final bool isNew,
      @JsonKey(name: "is_popular") required final bool isBestSeller,
      final List<CourseSectionModel>? sections}) = _$_CourseModel;
  const _CourseModel._() : super._();

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  @JsonKey(name: "category_id")
  String get categoryId;
  @override
  double get price;
  @override
  @JsonKey(name: "is_free")
  bool get isFree;
  @override
  @JsonKey(name: "is_featured")
  bool get isFeatured;
  @override
  @JsonKey(name: "is_trending")
  bool get isTrending;
  @override
  @JsonKey(name: "is_new")
  bool get isNew;
  @override
  @JsonKey(name: "is_popular")
  bool get isBestSeller;
  @override
  List<CourseSectionModel>? get sections;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
