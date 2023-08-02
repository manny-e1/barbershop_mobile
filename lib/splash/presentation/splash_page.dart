import 'package:barbershop_frontend/main.dart';
import 'package:barbershop_frontend/onboarding/presentation/onboarding_page.dart';
import 'package:barbershop_frontend/onboarding/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class Splashpage extends ConsumerWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingStatus = ref.watch(onboardingRepositoryStatusProvider);
    
    return Scaffold(
      body:onboardingStatus.isOnboardingSeen() ? const NextPage() : const OnboardingPage(),
    );
  }
}
