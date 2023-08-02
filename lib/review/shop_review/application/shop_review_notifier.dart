import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/review/core/domain/review.dart';
import 'package:barbershop_frontend/review/core/domain/review_enum.dart';
import 'package:barbershop_frontend/review/core/infrastructure/review_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'shop_review_notifier.freezed.dart';

@freezed
class ShopReviewState with _$ShopReviewState {
  const ShopReviewState._();
  const factory ShopReviewState.initial() = _Initial;
  const factory ShopReviewState.loadInProgress() = _LoadInProgress;
  const factory ShopReviewState.loadSuccess(List<Review> reviews) =
      _LoadSuccess;
  const factory ShopReviewState.failure(String message) = _Failure;
}

class ShopReviewNotifier extends StateNotifier<ShopReviewState> {
  final ReviewRepository _reviewRepository;

  ShopReviewNotifier(this._reviewRepository)
      : super(const ShopReviewState.initial());

  Future<void> getReviews(String id) async {
    state = const ShopReviewState.loadInProgress();
    final response = await _reviewRepository.getReviews(ReviewType.shop, id);
    
    String failure = resolveFailureOrSuccess(response);
    state = response.fold(
        (l) => ShopReviewState.failure(failure), (r) => ShopReviewState.loadSuccess(r));
  }
}
