// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDTO _$AppointmentDTOFromJson(Map<String, dynamic> json) {
  return _AppointmentDTO.fromJson(json);
}

/// @nodoc
class _$AppointmentDTOTearOff {
  const _$AppointmentDTOTearOff();

  _AppointmentDTO call(
      {@JsonKey(name: '_id') required String id,
      required UserDTO client,
      required UserDTO barber,
      required ShopDTO shop,
      required String startTime,
      required String endTime,
      required String date,
      required String status}) {
    return _AppointmentDTO(
      id: id,
      client: client,
      barber: barber,
      shop: shop,
      startTime: startTime,
      endTime: endTime,
      date: date,
      status: status,
    );
  }

  AppointmentDTO fromJson(Map<String, Object?> json) {
    return AppointmentDTO.fromJson(json);
  }
}

/// @nodoc
const $AppointmentDTO = _$AppointmentDTOTearOff();

/// @nodoc
mixin _$AppointmentDTO {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  UserDTO get client => throw _privateConstructorUsedError;
  UserDTO get barber => throw _privateConstructorUsedError;
  ShopDTO get shop => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDTOCopyWith<AppointmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDTOCopyWith<$Res> {
  factory $AppointmentDTOCopyWith(
          AppointmentDTO value, $Res Function(AppointmentDTO) then) =
      _$AppointmentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserDTO client,
      UserDTO barber,
      ShopDTO shop,
      String startTime,
      String endTime,
      String date,
      String status});

  $UserDTOCopyWith<$Res> get client;
  $UserDTOCopyWith<$Res> get barber;
  $ShopDTOCopyWith<$Res> get shop;
}

/// @nodoc
class _$AppointmentDTOCopyWithImpl<$Res>
    implements $AppointmentDTOCopyWith<$Res> {
  _$AppointmentDTOCopyWithImpl(this._value, this._then);

  final AppointmentDTO _value;
  // ignore: unused_field
  final $Res Function(AppointmentDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? client = freezed,
    Object? barber = freezed,
    Object? shop = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      barber: barber == freezed
          ? _value.barber
          : barber // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopDTO,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get client {
    return $UserDTOCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res> get barber {
    return $UserDTOCopyWith<$Res>(_value.barber, (value) {
      return _then(_value.copyWith(barber: value));
    });
  }

  @override
  $ShopDTOCopyWith<$Res> get shop {
    return $ShopDTOCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentDTOCopyWith<$Res>
    implements $AppointmentDTOCopyWith<$Res> {
  factory _$AppointmentDTOCopyWith(
          _AppointmentDTO value, $Res Function(_AppointmentDTO) then) =
      __$AppointmentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      UserDTO client,
      UserDTO barber,
      ShopDTO shop,
      String startTime,
      String endTime,
      String date,
      String status});

  @override
  $UserDTOCopyWith<$Res> get client;
  @override
  $UserDTOCopyWith<$Res> get barber;
  @override
  $ShopDTOCopyWith<$Res> get shop;
}

/// @nodoc
class __$AppointmentDTOCopyWithImpl<$Res>
    extends _$AppointmentDTOCopyWithImpl<$Res>
    implements _$AppointmentDTOCopyWith<$Res> {
  __$AppointmentDTOCopyWithImpl(
      _AppointmentDTO _value, $Res Function(_AppointmentDTO) _then)
      : super(_value, (v) => _then(v as _AppointmentDTO));

  @override
  _AppointmentDTO get _value => super._value as _AppointmentDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? client = freezed,
    Object? barber = freezed,
    Object? shop = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_AppointmentDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      barber: barber == freezed
          ? _value.barber
          : barber // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopDTO,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDTO extends _AppointmentDTO {
  const _$_AppointmentDTO(
      {@JsonKey(name: '_id') required this.id,
      required this.client,
      required this.barber,
      required this.shop,
      required this.startTime,
      required this.endTime,
      required this.date,
      required this.status})
      : super._();

  factory _$_AppointmentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDTOFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final UserDTO client;
  @override
  final UserDTO barber;
  @override
  final ShopDTO shop;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String date;
  @override
  final String status;

  @override
  String toString() {
    return 'AppointmentDTO(id: $id, client: $client, barber: $barber, shop: $shop, startTime: $startTime, endTime: $endTime, date: $date, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.barber, barber) &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(barber),
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AppointmentDTOCopyWith<_AppointmentDTO> get copyWith =>
      __$AppointmentDTOCopyWithImpl<_AppointmentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDTOToJson(this);
  }
}

abstract class _AppointmentDTO extends AppointmentDTO {
  const factory _AppointmentDTO(
      {@JsonKey(name: '_id') required String id,
      required UserDTO client,
      required UserDTO barber,
      required ShopDTO shop,
      required String startTime,
      required String endTime,
      required String date,
      required String status}) = _$_AppointmentDTO;
  const _AppointmentDTO._() : super._();

  factory _AppointmentDTO.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDTO.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  UserDTO get client;
  @override
  UserDTO get barber;
  @override
  ShopDTO get shop;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get date;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$AppointmentDTOCopyWith<_AppointmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
