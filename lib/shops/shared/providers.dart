import 'package:barbershop_frontend/core/providers.dart';
import 'package:barbershop_frontend/shops/application/shop_notifier.dart';
import 'package:barbershop_frontend/shops/infrastructure/data_source/shop_remote_service.dart';
import 'package:barbershop_frontend/shops/infrastructure/shop_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final shopRemoteServiceprovider = Provider((ref) =>
  ShopRemoteService(
 ref.watch(dioProvider)));

final shopRepositoryProvider =
    Provider((ref) => ShopRepository(ref.watch(shopRemoteServiceprovider)));

final shopNotifierProvider = StateNotifierProvider<ShopNotifier, ShopState>(
    (ref) => ShopNotifier(ref.read(shopRepositoryProvider)));
