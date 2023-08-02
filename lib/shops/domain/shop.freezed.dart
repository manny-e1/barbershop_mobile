// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopTearOff {
  const _$ShopTearOff();

  _Shop call(
      {required String id,
      required String name,
      required User shopAdmin,
      required List<User> barbers,
      required Location location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services}) {
    return _Shop(
      id: id,
      name: name,
      shopAdmin: shopAdmin,
      barbers: barbers,
      location: location,
      pics: pics,
      services: services,
    );
  }
}

/// @nodoc
const $Shop = _$ShopTearOff();

/// @nodoc
mixin _$Shop {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  User get shopAdmin => throw _privateConstructorUsedError;
  List<User> get barbers => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  List<String?>? get pics => throw _privateConstructorUsedError;
  List<Map<String, dynamic>?>? get services =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      User shopAdmin,
      List<User> barbers,
      Location location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services});

  $UserCopyWith<$Res> get shopAdmin;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ShopCopyWithImpl<$Res> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  final Shop _value;
  // ignore: unused_field
  final $Res Function(Shop) _then;

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
              as User,
      barbers: barbers == freezed
          ? _value.barbers
          : barbers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
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
  $UserCopyWith<$Res> get shopAdmin {
    return $UserCopyWith<$Res>(_value.shopAdmin, (value) {
      return _then(_value.copyWith(shopAdmin: value));
    });
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$ShopCopyWith(_Shop value, $Res Function(_Shop) then) =
      __$ShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      User shopAdmin,
      List<User> barbers,
      Location location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services});

  @override
  $UserCopyWith<$Res> get shopAdmin;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$ShopCopyWith<$Res> {
  __$ShopCopyWithImpl(_Shop _value, $Res Function(_Shop) _then)
      : super(_value, (v) => _then(v as _Shop));

  @override
  _Shop get _value => super._value as _Shop;

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
    return _then(_Shop(
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
              as User,
      barbers: barbers == freezed
          ? _value.barbers
          : barbers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
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

class _$_Shop extends _Shop {
  const _$_Shop(
      {required this.id,
      required this.name,
      required this.shopAdmin,
      required this.barbers,
      required this.location,
      this.pics,
      this.services})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final User shopAdmin;
  @override
  final List<User> barbers;
  @override
  final Location location;
  @override
  final List<String?>? pics;
  @override
  final List<Map<String, dynamic>?>? services;

  @override
  String toString() {
    return 'Shop(id: $id, name: $name, shopAdmin: $shopAdmin, barbers: $barbers, location: $location, pics: $pics, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shop &&
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
  _$ShopCopyWith<_Shop> get copyWith =>
      __$ShopCopyWithImpl<_Shop>(this, _$identity);
}

abstract class _Shop extends Shop {
  const factory _Shop(
      {required String id,
      required String name,
      required User shopAdmin,
      required List<User> barbers,
      required Location location,
      List<String?>? pics,
      List<Map<String, dynamic>?>? services}) = _$_Shop;
  const _Shop._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  User get shopAdmin;
  @override
  List<User> get barbers;
  @override
  Location get location;
  @override
  List<String?>? get pics;
  @override
  List<Map<String, dynamic>?>? get services;
  @override
  @JsonKey(ignore: true)
  _$ShopCopyWith<_Shop> get copyWith => throw _privateConstructorUsedError;
}
