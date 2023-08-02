// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'barber_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BarberReviewDTO _$BarberReviewDTOFromJson(Map<String, dynamic> json) {
  return _BarberReviewDTO.fromJson(json);
}

/// @nodoc
class _$BarberReviewDTOTearOff {
  const _$BarberReviewDTOTearOff();

  _BarberReviewDTO call(
      {@JsonKey(name: '_id') required String id,
      required UserDTO reviewer,
      @JsonKey(name: 'barber') required UserDTO reviewee,
      required String reviewText,
      required double rating}) {
    return _BarberReviewDTO(
      id: id,
      reviewer: reviewer,
      reviewee: reviewee,
      reviewText: reviewText,
      rating: rating,
    );
  }

  BarberReviewDTO fromJson(Map<String, Object?> json) {
    return BarberReviewDTO.fromJson(json);
  }
}

/// @nodoc
const $BarberReviewDTO = _$BarberReviewDTOTearOff();

/// @nodoc
mixin _$BarberReviewDTO {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  UserDTO get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: 'barber')
  UserDTO get reviewee => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarberReviewDTOCopyWith<BarberReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarberReviewDTOCopyWith<$Res> {
  factory $BarberReviewDTOCopyWith(
          BarberReviewDTO value, $Res Function(BarberReviewDTO) then) =
      _$BarberReviewDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserDTO reviewer,
      @JsonKey(name: 'barber') UserDTO reviewee,
      String reviewText,
      double rating});

  $UserDTOCopyWith<$Res> get reviewer;
  $UserDTOCopyWith<$Res> get reviewee;
}

/// @nodoc
class _$BarberReviewDTOCopyWithImpl<$Res>
    implements $BarberReviewDTOCopyWith<$Res> {
  _$BarberReviewDTOCopyWithImpl(this._value, this._then);

  final BarberReviewDTO _value;
  // ignore: unused_field
  final $Res Function(BarberReviewDTO) _then;

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
              as UserDTO,
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
  $UserDTOCopyWith<$Res> get reviewee {
    return $UserDTOCopyWith<$Res>(_value.reviewee, (value) {
      return _then(_value.copyWith(reviewee: value));
    });
  }
}

/// @nodoc
abstract class _$BarberReviewDTOCopyWith<$Res>
    implements $BarberReviewDTOCopyWith<$Res> {
  factory _$BarberReviewDTOCopyWith(
          _BarberReviewDTO value, $Res Function(_BarberReviewDTO) then) =
      __$BarberReviewDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserDTO reviewer,
      @JsonKey(name: 'barber') UserDTO reviewee,
      String reviewText,
      double rating});

  @override
  $UserDTOCopyWith<$Res> get reviewer;
  @override
  $UserDTOCopyWith<$Res> get reviewee;
}

/// @nodoc
class __$BarberReviewDTOCopyWithImpl<$Res>
    extends _$BarberReviewDTOCopyWithImpl<$Res>
    implements _$BarberReviewDTOCopyWith<$Res> {
  __$BarberReviewDTOCopyWithImpl(
      _BarberReviewDTO _value, $Res Function(_BarberReviewDTO) _then)
      : super(_value, (v) => _then(v as _BarberReviewDTO));

  @override
  _BarberReviewDTO get _value => super._value as _BarberReviewDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewer = freezed,
    Object? reviewee = freezed,
    Object? reviewText = freezed,
    Object? rating = freezed,
  }) {
    return _then(_BarberReviewDTO(
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
              as UserDTO,
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
class _$_BarberReviewDTO extends _BarberReviewDTO {
  const _$_BarberReviewDTO(
      {@JsonKey(name: '_id') required this.id,
      required this.reviewer,
      @JsonKey(name: 'barber') required this.reviewee,
      required this.reviewText,
      required this.rating})
      : super._();

  factory _$_BarberReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BarberReviewDTOFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final UserDTO reviewer;
  @override
  @JsonKey(name: 'barber')
  final UserDTO reviewee;
  @override
  final String reviewText;
  @override
  final double rating;

  @override
  String toString() {
    return 'BarberReviewDTO(id: $id, reviewer: $reviewer, reviewee: $reviewee, reviewText: $reviewText, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BarberReviewDTO &&
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
  _$BarberReviewDTOCopyWith<_BarberReviewDTO> get copyWith =>
      __$BarberReviewDTOCopyWithImpl<_BarberReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BarberReviewDTOToJson(this);
  }
}

abstract class _BarberReviewDTO extends BarberReviewDTO {
  const factory _BarberReviewDTO(
      {@JsonKey(name: '_id') required String id,
      required UserDTO reviewer,
      @JsonKey(name: 'barber') required UserDTO reviewee,
      required String reviewText,
      required double rating}) = _$_BarberReviewDTO;
  const _BarberReviewDTO._() : super._();

  factory _BarberReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_BarberReviewDTO.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  UserDTO get reviewer;
  @override
  @JsonKey(name: 'barber')
  UserDTO get reviewee;
  @override
  String get reviewText;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$BarberReviewDTOCopyWith<_BarberReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
