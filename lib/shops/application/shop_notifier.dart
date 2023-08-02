import 'package:barbershop_frontend/core/infrastructure/helper_functions.dart';
import 'package:barbershop_frontend/shops/domain/shop.dart';
import 'package:barbershop_frontend/shops/infrastructure/shop_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'shop_notifier.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const ShopState._();
  const factory ShopState.initial() = _Initial;
  const factory ShopState.loadInProgress() = _LoadInProgress;
  const factory ShopState.loadSuccess(List<Shop> shop) = _LoadSuccess;
  const factory ShopState.failure(String message) = _Factory;
}

class ShopNotifier extends StateNotifier<ShopState> {
  final ShopRepository _repository;
  ShopNotifier(this._repository) : super(const ShopState.initial());

  // Future<void> getShop(id) async {
  //   state = const ShopState.loadInProgress();
  //   final shop = await _repository.getShop(id);
  //   String failure = resolveFailureOrSuccess(shop);
  //   state = shop.fold((l) => ShopState.failure(failure), (r) => ShopState.loadSuccess(r));

  // }

  Future<void> getShops() async {
    state = const ShopState.loadInProgress();
    debugPrint("he");
    final shop = await _repository.getShops();
    String failure = resolveFailureOrSuccess(shop);
    state = shop.fold(
        (l) => ShopState.failure(failure), (r) => ShopState.loadSuccess(r));
  }
}
