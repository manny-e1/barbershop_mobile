import 'package:barbershop_frontend/shops/domain/shop.dart';
import 'package:barbershop_frontend/shops/infrastructure/shop_dto.dart';
extension DTOListToDomainList on List<ShopDTO> {
  List<Shop> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

