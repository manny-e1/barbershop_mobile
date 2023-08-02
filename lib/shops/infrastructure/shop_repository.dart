import 'package:barbershop_frontend/core/domain/api_failure.dart';
import 'package:barbershop_frontend/core/infrastructure/api_exception.dart';
import 'package:barbershop_frontend/shops/domain/shop.dart';
import 'package:barbershop_frontend/shops/infrastructure/convert_dto_list.dart';
import 'package:barbershop_frontend/shops/infrastructure/data_source/shop_remote_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';

class ShopRepository {
  final ShopRemoteService _service;

  ShopRepository(this._service);

  Future<Either<ApiFailure, Shop>> getShop(id) async {
    try {
      final shop = await _service.getShop(id);
      return shop.when(
        noConnection: () => left(const ApiFailure.server(
            'Your device is not connected to internet.')),
        withData: (data) => right(
          data.toDomain(),
        ),
      );
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }

  Future<Either<ApiFailure, List<Shop>>> getShops() async {
    try {
      final shops = await _service.getShops();
      debugPrint(shops.toString());
      return shops.when(
        noConnection: () => left(const ApiFailure.server(
            'Your device is not connected to internet.')),
        withData: (data) => right(
          data.toDomain(),
        ),
      );
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }
}
