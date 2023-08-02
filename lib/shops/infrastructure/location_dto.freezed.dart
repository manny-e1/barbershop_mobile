// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDTO _$LocationDTOFromJson(Map<String, dynamic> json) {
  return _LocationDTO.fromJson(json);
}

/// @nodoc
class _$LocationDTOTearOff {
  const _$LocationDTOTearOff();

  _LocationDTO call({required double lat, required double lng}) {
    return _LocationDTO(
      lat: lat,
      lng: lng,
    );
  }

  LocationDTO fromJson(Map<String, Object?> json) {
    return LocationDTO.fromJson(json);
  }
}

/// @nodoc
const $LocationDTO = _$LocationDTOTearOff();

/// @nodoc
mixin _$LocationDTO {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDTOCopyWith<LocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDTOCopyWith<$Res> {
  factory $LocationDTOCopyWith(
          LocationDTO value, $Res Function(LocationDTO) then) =
      _$LocationDTOCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LocationDTOCopyWithImpl<$Res> implements $LocationDTOCopyWith<$Res> {
  _$LocationDTOCopyWithImpl(this._value, this._then);

  final LocationDTO _value;
  // ignore: unused_field
  final $Res Function(LocationDTO) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationDTOCopyWith<$Res>
    implements $LocationDTOCopyWith<$Res> {
  factory _$LocationDTOCopyWith(
          _LocationDTO value, $Res Function(_LocationDTO) then) =
      __$LocationDTOCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$LocationDTOCopyWithImpl<$Res> extends _$LocationDTOCopyWithImpl<$Res>
    implements _$LocationDTOCopyWith<$Res> {
  __$LocationDTOCopyWithImpl(
      _LocationDTO _value, $Res Function(_LocationDTO) _then)
      : super(_value, (v) => _then(v as _LocationDTO));

  @override
  _LocationDTO get _value => super._value as _LocationDTO;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_LocationDTO(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDTO extends _LocationDTO {
  const _$_LocationDTO({required this.lat, required this.lng}) : super._();

  factory _$_LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDTOFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LocationDTO(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDTO &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$LocationDTOCopyWith<_LocationDTO> get copyWith =>
      __$LocationDTOCopyWithImpl<_LocationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDTOToJson(this);
  }
}

abstract class _LocationDTO extends LocationDTO {
  const factory _LocationDTO({required double lat, required double lng}) =
      _$_LocationDTO;
  const _LocationDTO._() : super._();

  factory _LocationDTO.fromJson(Map<String, dynamic> json) =
      _$_LocationDTO.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$LocationDTOCopyWith<_LocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
