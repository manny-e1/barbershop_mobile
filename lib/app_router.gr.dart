// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import 'new_screen.dart' as _i4;
import 'onboarding/presentation/onboarding_page.dart' as _i7;
import 'splash/presentation/splash_page.dart' as _i1;
import 'user/auth/presentation/register_page.dart' as _i3;
import 'user/auth/presentation/sign_in_page.dart' as _i2;
import 'user/user_services/presentation/user_page.dart' as _i5;
import 'user/user_services/presentation/users_page.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    Splashpage.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Splashpage());
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage(key: args.key));
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegisterPage(key: args.key));
    },
    NewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NewPage());
    },
    UserRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserPage());
    },
    UsersRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UsersPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.OnboardingPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(Splashpage.name, path: '/'),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i8.RouteConfig(RegisterRoute.name, path: '/sign-up'),
        _i8.RouteConfig(NewRoute.name, path: '/auth'),
        _i8.RouteConfig(UserRoute.name, path: '/profile'),
        _i8.RouteConfig(UsersRoute.name, path: '/users'),
        _i8.RouteConfig(OnboardingRoute.name, path: '/starred')
      ];
}

/// generated route for
/// [_i1.Splashpage]
class Splashpage extends _i8.PageRouteInfo<void> {
  const Splashpage() : super(Splashpage.name, path: '/');

  static const String name = 'Splashpage';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i9.Key? key})
      : super(SignInRoute.name,
            path: '/sign-in', args: SignInRouteArgs(key: key));

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({_i9.Key? key})
      : super(RegisterRoute.name,
            path: '/sign-up', args: RegisterRouteArgs(key: key));

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.NewPage]
class NewRoute extends _i8.PageRouteInfo<void> {
  const NewRoute() : super(NewRoute.name, path: '/auth');

  static const String name = 'NewRoute';
}

/// generated route for
/// [_i5.UserPage]
class UserRoute extends _i8.PageRouteInfo<void> {
  const UserRoute() : super(UserRoute.name, path: '/profile');

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i6.UsersPage]
class UsersRoute extends _i8.PageRouteInfo<void> {
  const UsersRoute() : super(UsersRoute.name, path: '/users');

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/starred');

  static const String name = 'OnboardingRoute';
}
