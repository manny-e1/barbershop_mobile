// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopReviewDTO _$ShopReviewDTOFromJson(Map<String, dynamic> json) {
  return _ShopReviewDTO.fromJson(json);
}

/// @nodoc
class _$ShopReviewDTOTearOff {
  const _$ShopReviewDTOTearOff();

  _ShopReviewDTO call(
      {@JsonKey(name: '_id') required String id,
      required UserDTO reviewer,
      @JsonKey(name: 'shop') required ShopDTO reviewee,
      required String reviewText,
      required double rating}) {
    return _ShopReviewDTO(
      id: id,
      reviewer: reviewer,
      reviewee: reviewee,
      reviewText: reviewText,
      rating: rating,
    );
  }

  ShopReviewDTO fromJson(Map<String, Object?> json) {
    return ShopReviewDTO.fromJson(json);
  }
}

/// @nodoc
const $ShopReviewDTO = _$ShopReviewDTOTearOff();

/// @nodoc
mixin _$ShopReviewDTO {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  UserDTO get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop')
  ShopDTO get reviewee => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopReviewDTOCopyWith<ShopReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopReviewDTOCopyWith<$Res> {
  factory $ShopReviewDTOCopyWith(
          ShopReviewDTO value, $Res Function(ShopReviewDTO) then) =
      _$ShopReviewDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserDTO reviewer,
      @JsonKey(name: 'shop') ShopDTO reviewee,
      String reviewText,
      double rating});

  $UserDTOCopyWith<$Res> get reviewer;
  $ShopDTOCopyWith<$Res> get reviewee;
}

/// @nodoc
class _$ShopReviewDTOCopyWithImpl<$Res>
    implements $ShopReviewDTOCopyWith<$Res> {
  _$ShopReviewDTOCopyWithImpl(this._value, this._then);

  final ShopReviewDTO _value;
  // ignore: unused_field
  final $Res Function(ShopReviewDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewer = freezed,
    Object? reviewee = freezed,
    Object? reviewText = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: reviewer == freezed
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      reviewee: reviewee == freezed
          ? _value.reviewee
          : reviewee // ignore: cast_nullable_to_non_nullable
              as ShopDTO,
      reviewText: reviewText == freezed
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get reviewer {
    return $UserDTOCopyWith<$Res>(_value.reviewer, (value) {
      return _then(_value.copyWith(reviewer: value));
    });
  }

  @override
  $ShopDTOCopyWith<$Res> get reviewee {
    return $ShopDTOCopyWith<$Res>(_value.reviewee, (value) {
      return _then(_value.copyWith(reviewee: value));
    });
  }
}

/// @nodoc
abstract class _$ShopReviewDTOCopyWith<$Res>
    implements $ShopReviewDTOCopyWith<$Res> {
  factory _$ShopReviewDTOCopyWith(
          _ShopReviewDTO value, $Res Function(_ShopReviewDTO) then) =
      __$ShopReviewDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserDTO reviewer,
      @JsonKey(name: 'shop') ShopDTO reviewee,
      String reviewText,
      double rating});

  @override
  $UserDTOCopyWith<$Res> get reviewer;
  @override
  $ShopDTOCopyWith<$Res> get reviewee;
}

/// @nodoc
class __$ShopReviewDTOCopyWithImpl<$Res>
    extends _$ShopReviewDTOCopyWithImpl<$Res>
    implements _$ShopReviewDTOCopyWith<$Res> {
  __$ShopReviewDTOCopyWithImpl(
      _ShopReviewDTO _value, $Res Function(_ShopReviewDTO) _then)
      : super(_value, (v) => _then(v as _ShopReviewDTO));

  @override
  _ShopReviewDTO get _value => super._value as _ShopReviewDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewer = freezed,
    Object? reviewee = freezed,
    Object? reviewText = freezed,
    Object? rating = freezed,
  }) {
    return _then(_ShopReviewDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: reviewer == freezed
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      reviewee: reviewee == freezed
          ? _value.reviewee
          : reviewee // ignore: cast_nullable_to_non_nullable
              as ShopDTO,
      reviewText: reviewText == freezed
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopReviewDTO extends _ShopReviewDTO {
  const _$_ShopReviewDTO(
      {@JsonKey(name: '_id') required this.id,
      required this.reviewer,
      @JsonKey(name: 'shop') required this.reviewee,
      required this.reviewText,
      required this.rating})
      : super._();

  factory _$_ShopReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShopReviewDTOFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final UserDTO reviewer;
  @override
  @JsonKey(name: 'shop')
  final ShopDTO reviewee;
  @override
  final String reviewText;
  @override
  final double rating;

  @override
  String toString() {
    return 'ShopReviewDTO(id: $id, reviewer: $reviewer, reviewee: $reviewee, reviewText: $reviewText, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopReviewDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.reviewer, reviewer) &&
            const DeepCollectionEquality().equals(other.reviewee, reviewee) &&
            const DeepCollectionEquality()
                .equals(other.reviewText, reviewText) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(reviewer),
      const DeepCollectionEquality().hash(reviewee),
      const DeepCollectionEquality().hash(reviewText),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$ShopReviewDTOCopyWith<_ShopReviewDTO> get copyWith =>
      __$ShopReviewDTOCopyWithImpl<_ShopReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopReviewDTOToJson(this);
  }
}

abstract class _ShopReviewDTO extends ShopReviewDTO {
  const factory _ShopReviewDTO(
      {@JsonKey(name: '_id') required String id,
      required UserDTO reviewer,
      @JsonKey(name: 'shop') required ShopDTO reviewee,
      required String reviewText,
      required double rating}) = _$_ShopReviewDTO;
  const _ShopReviewDTO._() : super._();

  factory _ShopReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ShopReviewDTO.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  UserDTO get reviewer;
  @override
  @JsonKey(name: 'shop')
  ShopDTO get reviewee;
  @override
  String get reviewText;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$ShopReviewDTOCopyWith<_ShopReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
