import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/review/core/domain/review.dart';
import 'package:barbershop_frontend/review/core/domain/review_enum.dart';
import 'package:barbershop_frontend/review/core/infrastructure/review_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'barber_review_notifier.freezed.dart';

@freezed
class BarberReviewState with _$BarberReviewState {
  const BarberReviewState._();
  const factory BarberReviewState.initial() = _Initial;
  const factory BarberReviewState.loadInProgress() = _LoadInProgress;
  const factory BarberReviewState.loadSuccess(List<Review> reviews) =
      _LoadSuccess;
  const factory BarberReviewState.failure(String message) = _Failure;
}

class BarberReviewNotifier extends StateNotifier<BarberReviewState> {
  final ReviewRepository _reviewRepository;

  BarberReviewNotifier(this._reviewRepository)
      : super(const BarberReviewState.initial());

  Future<void> getReviews(String id) async {
    state = const BarberReviewState.loadInProgress();
    final response = await _reviewRepository.getReviews(ReviewType.barber, id);
    
    String failure = resolveFailureOrSuccess(response);
    state = response.fold(
        (l) => BarberReviewState.failure(failure), (r) => BarberReviewState.loadSuccess(r));
  }
}
