// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopDTO _$ShopDTOFromJson(Map<String, dynamic> json) {
  return _ShopDTO.fromJson(json);
}

/// @nodoc
class _$ShopDTOTearOff {
  const _$ShopDTOTearOff();

  _ShopDTO call(
      {@JsonKey(name: '_id') required String id,
      required String name,
      required UserDTO shopAdmin,
      required List<UserDTO> barbers,
      required LocationDTO location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services}) {
    return _ShopDTO(
      id: id,
      name: name,
      shopAdmin: shopAdmin,
      barbers: barbers,
      location: location,
      pics: pics,
      services: services,
    );
  }

  ShopDTO fromJson(Map<String, Object?> json) {
    return ShopDTO.fromJson(json);
  }
}

/// @nodoc
const $ShopDTO = _$ShopDTOTearOff();

/// @nodoc
mixin _$ShopDTO {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserDTO get shopAdmin => throw _privateConstructorUsedError;
  List<UserDTO> get barbers => throw _privateConstructorUsedError;
  LocationDTO get location => throw _privateConstructorUsedError;
  List<String?>? get pics => throw _privateConstructorUsedError;
  List<Map<String, dynamic>?>? get services =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDTOCopyWith<ShopDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDTOCopyWith<$Res> {
  factory $ShopDTOCopyWith(ShopDTO value, $Res Function(ShopDTO) then) =
      _$ShopDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      UserDTO shopAdmin,
      List<UserDTO> barbers,
      LocationDTO location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services});

  $UserDTOCopyWith<$Res> get shopAdmin;
  $LocationDTOCopyWith<$Res> get location;
}

/// @nodoc
class _$ShopDTOCopyWithImpl<$Res> implements $ShopDTOCopyWith<$Res> {
  _$ShopDTOCopyWithImpl(this._value, this._then);

  final ShopDTO _value;
  // ignore: unused_field
  final $Res Function(ShopDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shopAdmin = freezed,
    Object? barbers = freezed,
    Object? location = freezed,
    Object? pics = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shopAdmin: shopAdmin == freezed
          ? _value.shopAdmin
          : shopAdmin // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      barbers: barbers == freezed
          ? _value.barbers
          : barbers // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDTO,
      pics: pics == freezed
          ? _value.pics
          : pics // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>?,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get shopAdmin {
    return $UserDTOCopyWith<$Res>(_value.shopAdmin, (value) {
      return _then(_value.copyWith(shopAdmin: value));
    });
  }

  @override
  $LocationDTOCopyWith<$Res> get location {
    return $LocationDTOCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$ShopDTOCopyWith<$Res> implements $ShopDTOCopyWith<$Res> {
  factory _$ShopDTOCopyWith(_ShopDTO value, $Res Function(_ShopDTO) then) =
      __$ShopDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      UserDTO shopAdmin,
      List<UserDTO> barbers,
      LocationDTO location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services});

  @override
  $UserDTOCopyWith<$Res> get shopAdmin;
  @override
  $LocationDTOCopyWith<$Res> get location;
}

/// @nodoc
class __$ShopDTOCopyWithImpl<$Res> extends _$ShopDTOCopyWithImpl<$Res>
    implements _$ShopDTOCopyWith<$Res> {
  __$ShopDTOCopyWithImpl(_ShopDTO _value, $Res Function(_ShopDTO) _then)
      : super(_value, (v) => _then(v as _ShopDTO));

  @override
  _ShopDTO get _value => super._value as _ShopDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shopAdmin = freezed,
    Object? barbers = freezed,
    Object? location = freezed,
    Object? pics = freezed,
    Object? services = freezed,
  }) {
    return _then(_ShopDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shopAdmin: shopAdmin == freezed
          ? _value.shopAdmin
          : shopAdmin // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      barbers: barbers == freezed
          ? _value.barbers
          : barbers // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDTO,
      pics: pics == freezed
          ? _value.pics
          : pics // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopDTO extends _ShopDTO {
  const _$_ShopDTO(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.shopAdmin,
      required this.barbers,
      required this.location,
      this.pics,
      this.services})
      : super._();

  factory _$_ShopDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShopDTOFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final UserDTO shopAdmin;
  @override
  final List<UserDTO> barbers;
  @override
  final LocationDTO location;
  @override
  final List<String?>? pics;
  @override
  final List<Map<String, dynamic>?>? services;

  @override
  String toString() {
    return 'ShopDTO(id: $id, name: $name, shopAdmin: $shopAdmin, barbers: $barbers, location: $location, pics: $pics, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.shopAdmin, shopAdmin) &&
            const DeepCollectionEquality().equals(other.barbers, barbers) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.pics, pics) &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(shopAdmin),
      const DeepCollectionEquality().hash(barbers),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(pics),
      const DeepCollectionEquality().hash(services));

  @JsonKey(ignore: true)
  @override
  _$ShopDTOCopyWith<_ShopDTO> get copyWith =>
      __$ShopDTOCopyWithImpl<_ShopDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopDTOToJson(this);
  }
}

abstract class _ShopDTO extends ShopDTO {
  const factory _ShopDTO(
      {@JsonKey(name: '_id') required String id,
      required String name,
      required UserDTO shopAdmin,
      required List<UserDTO> barbers,
      required LocationDTO location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services}) = _$_ShopDTO;
  const _ShopDTO._() : super._();

  factory _ShopDTO.fromJson(Map<String, dynamic> json) = _$_ShopDTO.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  UserDTO get shopAdmin;
  @override
  List<UserDTO> get barbers;
  @override
  LocationDTO get location;
  @override
  List<String?>? get pics;
  @override
  List<Map<String, dynamic>?>? get services;
  @override
  @JsonKey(ignore: true)
  _$ShopDTOCopyWith<_ShopDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
