import 'package:barbershop_frontend/core/core.dart';
import 'package:barbershop_frontend/review/barber_review/application/barber_review_notifier.dart';
import 'package:barbershop_frontend/review/barber_review/infrastructure/data_source/barber_review_remote_service.dart';
import 'package:barbershop_frontend/review/core/infrastructure/review_repository.dart';
import 'package:barbershop_frontend/review/shop_review/application/shop_review_notifier.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/data_source/shop_review_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final barberReviewRemoteServiceProvider =
    Provider((ref) => BarberReviewRemoteService(ref.watch(dioProvider)));

final shopReviewRemoteServiceProvider =
    Provider((ref) => ShopReviewRemoteService(ref.watch(dioProvider)));

final reviewRepositoryProvider = Provider((ref) => ReviewRepository(
    ref.watch(barberReviewRemoteServiceProvider),
    ref.watch(shopReviewRemoteServiceProvider)));

final barberReviewNotifierProvider =
    StateNotifierProvider<BarberReviewNotifier, BarberReviewState>(
        (ref) => BarberReviewNotifier(ref.watch(reviewRepositoryProvider)));
final shopReviewNotifierProvider =
    StateNotifierProvider<ShopReviewNotifier, ShopReviewState>(
        (ref) => ShopReviewNotifier(ref.watch(reviewRepositoryProvider)));
