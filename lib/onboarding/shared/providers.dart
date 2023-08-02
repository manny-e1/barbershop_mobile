import 'package:barbershop_frontend/core/providers.dart';
import 'package:barbershop_frontend/onboarding/infrastructure/infrastructure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingRepositoryStatusProvider = Provider((ref) =>
    OnboardingStatusRepository(ref.read(hiveProvider('darkModeTutorial'))));

