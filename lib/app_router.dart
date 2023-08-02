import 'package:auto_route/auto_route.dart';
import 'package:barbershop_frontend/new_screen.dart';
import 'package:barbershop_frontend/onboarding/presentation/onboarding_page.dart';
import 'package:barbershop_frontend/splash/presentation/splash_page.dart';
import 'package:barbershop_frontend/user/auth/presentation/register_page.dart';
import 'package:barbershop_frontend/user/auth/presentation/sign_in_page.dart';
import 'package:barbershop_frontend/user/user_services/presentation/user_page.dart';
import 'package:barbershop_frontend/user/user_services/presentation/users_page.dart';
@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: Splashpage, initial: true),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: RegisterPage, path: '/sign-up'),
    MaterialRoute(page: NewPage, path: '/auth'),
    MaterialRoute(page: UserPage, path: '/profile'),
    MaterialRoute(page: UsersPage, path: '/users'),
    MaterialRoute(page: OnboardingPage, path: '/starred'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}