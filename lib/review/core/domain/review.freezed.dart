// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review<T> call<T>(
      {required String id,
      required User reviewer,
      required T reviewee,
      required String reviewText,
      required double rating}) {
    return _Review<T>(
      id: id,
      reviewer: reviewer,
      reviewee: reviewee,
      reviewText: reviewText,
      rating: rating,
    );
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review<T> {
  String get id => throw _privateConstructorUsedError;
  User get reviewer => throw _privateConstructorUsedError;
  T get reviewee => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<T, Review<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<T, $Res> {
  factory $ReviewCopyWith(Review<T> value, $Res Function(Review<T>) then) =
      _$ReviewCopyWithImpl<T, $Res>;
  $Res call(
      {String id, User reviewer, T reviewee, String reviewText, double rating});

  $UserCopyWith<$Res> get reviewer;
}

/// @nodoc
class _$ReviewCopyWithImpl<T, $Res> implements $ReviewCopyWith<T, $Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review<T> _value;
  // ignore: unused_field
  final $Res Function(Review<T>) _then;

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
              as User,
      reviewee: reviewee == freezed
          ? _value.reviewee
          : reviewee // ignore: cast_nullable_to_non_nullable
              as T,
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
  $UserCopyWith<$Res> get reviewer {
    return $UserCopyWith<$Res>(_value.reviewer, (value) {
      return _then(_value.copyWith(reviewer: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<T, $Res> implements $ReviewCopyWith<T, $Res> {
  factory _$ReviewCopyWith(_Review<T> value, $Res Function(_Review<T>) then) =
      __$ReviewCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {String id, User reviewer, T reviewee, String reviewText, double rating});

  @override
  $UserCopyWith<$Res> get reviewer;
}

/// @nodoc
class __$ReviewCopyWithImpl<T, $Res> extends _$ReviewCopyWithImpl<T, $Res>
    implements _$ReviewCopyWith<T, $Res> {
  __$ReviewCopyWithImpl(_Review<T> _value, $Res Function(_Review<T>) _then)
      : super(_value, (v) => _then(v as _Review<T>));

  @override
  _Review<T> get _value => super._value as _Review<T>;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewer = freezed,
    Object? reviewee = freezed,
    Object? reviewText = freezed,
    Object? rating = freezed,
  }) {
    return _then(_Review<T>(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: reviewer == freezed
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as User,
      reviewee: reviewee == freezed
          ? _value.reviewee
          : reviewee // ignore: cast_nullable_to_non_nullable
              as T,
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

class _$_Review<T> extends _Review<T> {
  const _$_Review(
      {required this.id,
      required this.reviewer,
      required this.reviewee,
      required this.reviewText,
      required this.rating})
      : super._();

  @override
  final String id;
  @override
  final User reviewer;
  @override
  final T reviewee;
  @override
  final String reviewText;
  @override
  final double rating;

  @override
  String toString() {
    return 'Review<$T>(id: $id, reviewer: $reviewer, reviewee: $reviewee, reviewText: $reviewText, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Review<T> &&
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
  _$ReviewCopyWith<T, _Review<T>> get copyWith =>
      __$ReviewCopyWithImpl<T, _Review<T>>(this, _$identity);
}

abstract class _Review<T> extends Review<T> {
  const factory _Review(
      {required String id,
      required User reviewer,
      required T reviewee,
      required String reviewText,
      required double rating}) = _$_Review<T>;
  const _Review._() : super._();

  @override
  String get id;
  @override
  User get reviewer;
  @override
  T get reviewee;
  @override
  String get reviewText;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<T, _Review<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
