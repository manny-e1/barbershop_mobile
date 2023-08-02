import 'package:barbershop_frontend/shops/domain/shop.dart';
import 'package:barbershop_frontend/shops/infrastructure/location_dto.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/convert_between_list_of_dto_and_domain.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_dto.freezed.dart';
part 'shop_dto.g.dart';

@freezed
class ShopDTO with _$ShopDTO {
  const ShopDTO._();
  const factory ShopDTO({
    @JsonKey(name: '_id') required String id,
    required String name,
    required UserDTO shopAdmin,
    required List<UserDTO> barbers,
    required LocationDTO location,
    List<String?>? pics,
    List<Map<String, dynamic>?>? services,
  }) = _ShopDTO;

  factory ShopDTO.fromJson(Map<String, dynamic> json) =>
      _$ShopDTOFromJson(json);

  factory ShopDTO.fromDomain(Shop _) {
    return ShopDTO(
        id: _.id,
        name: _.name,
        shopAdmin: UserDTO.fromDomain(_.shopAdmin),
        barbers: _.barbers.toDTO(),
        location: LocationDTO.fromDomain(_.location),
        pics: _.pics,
        services: _.services);
  }

  Shop toDomain() {
    return Shop(
        id: id,
        name: name,
        shopAdmin: shopAdmin.toDomain(),
        barbers: barbers.toDomain(),
        location: location.toDomain(),
        pics: pics,
        services: services
      );
  }
}
