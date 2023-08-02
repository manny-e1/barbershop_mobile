import 'package:barbershop_frontend/main.dart';
import 'package:barbershop_frontend/onboarding/config.dart';
import 'package:barbershop_frontend/onboarding/domain/onboarding_list.dart';
import 'package:barbershop_frontend/onboarding/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/onboarding/presentation/widgets/page_indicators.dart';
import 'package:barbershop_frontend/onboarding/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingPage> {
  int currentPage = 0;

  final _pageController = PageController(initialPage: 0);
  late OnboardingStatusRepository onboardingStatus;

  @override
  void initState() {
    Future.microtask(() {
      onboardingStatus = ref.read(onboardingRepositoryStatusProvider);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingList.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    onboardingList[index].title,
                    style: kTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 100, child: Text(onboardingList[index].svg)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    onboardingList[index].description,
                    textAlign: TextAlign.center,
                    style: kBodyText1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                currentPage == onboardingList.length - 1
                    ? TextButton(
                        child: const Text('Get Started'),
                        onPressed: () {
                          onboardingStatus.updateOnboardingStatus();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NextPage(),
                              ));
                        },
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            child: const Text('Skip'),
                            onPressed: () {
                          onboardingStatus.updateOnboardingStatus();

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NextPage()));
                            },
                          ),
                          Row(
                            children: List.generate(
                              onboardingList.length,
                              (index) => PageIndicator(index == currentPage),
                            ),
                          ),
                          TextButton(
                            child: const Text('Next'),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                          )
                        ],
                      ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
