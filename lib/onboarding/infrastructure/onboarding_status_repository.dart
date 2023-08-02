import 'package:barbershop_frontend/onboarding/infrastructure/infrastructure.dart';
import 'package:hive/hive.dart';

class OnboardingStatusRepository extends IOnboardingStatus {
  final Box _box;

  OnboardingStatusRepository(this._box);

  @override
  bool isOnboardingSeen() => _box.get('onboarding', defaultValue: false);

  @override
  Future<void> updateOnboardingStatus() async {
    await _box.put('onboarding', true);
  }
}
