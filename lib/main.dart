import 'package:barbershop_frontend/core/presentation/homepage.dart';
import 'package:barbershop_frontend/core/providers.dart';
import 'package:barbershop_frontend/onboarding/shared/providers.dart';
import 'package:barbershop_frontend/theme/theme.dart';
import 'package:barbershop_frontend/user/auth/application/auth_notifier.dart';
import 'package:barbershop_frontend/user/auth/shared/providers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app_router.gr.dart';

const darkModeBox = 'darkModeTutorial';

void main() async {
  await dotenv.load();
  await Hive.initFlutter();
  await Hive.openBox(darkModeBox);
  runApp(ProviderScope(
      child: ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: () => MaterialApp(
      //... other code
      builder: (context, widget) {
        //add this line
        ScreenUtil.setContext(context);
        return MediaQuery(
          //Setting font does not change with system font size
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        );
        
      },
      home: Homepage(),
     
    ),
  )));
}

final initializationProvider = FutureProvider<Unit>((ref) async {
  ref.read(dioProvider)
    ..options = BaseOptions(baseUrl: dotenv.env["API_BASE_URL"]!)
    ..interceptors.add(ref.read(authInterceptorProvider));
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class MyApp extends ConsumerWidget {
  final appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final onboardingStatus = ref.watch(onboardingRepositoryStatusProvider);
    ref.listen(initializationProvider, (previous, current) {});
    if (onboardingStatus.isOnboardingSeen()) {
      ref.listen<AuthState>(authNotifierProvider, (previous, current) {
        current.maybeWhen(
          orElse: () {},
          authenticated: () {
            appRouter.pushAndPopUntil(
              const NewRoute(),
              predicate: (route) => false,
            );
          },
          unauthenticated: () {
            appRouter.pushAndPopUntil(
              SignInRoute(),
              predicate: (route) => false,
            );
          },
        );
      });
    }

    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Repo Viewer",
        themeMode: themeMode,
        darkTheme: ThemeData.dark(),
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const NextPage()));
              },
              icon: const Icon(Icons.forward))
        ],
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}

class NextPage extends ConsumerWidget {
  const NextPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    final themeMode = ref.watch(themeNotifierProvider.notifier);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                themeMode.updateThemeState(ThemeMode.system);
              },
              icon: const Icon(Icons.settings_system_daydream_rounded),
            ),
            IconButton(
              onPressed: () {
                themeMode.updateThemeState(ThemeMode.light);
              },
              icon: const Icon(Icons.light_mode),
            ),
            IconButton(
              onPressed: () {
                themeMode.updateThemeState(ThemeMode.dark);
              },
              icon: const Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
    );
  }
}
