// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../screens/screens.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Splashscreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Splashscreen());
    },
    Usertype.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Usertype());
    },
    HomeScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SignUpPersonal.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignUpPersonal());
    },
    SignUpEcommerce.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignUpEcommerce());
    },
    SignInscreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInscreen());
    },
    Verification.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Verification());
    },
    Congratulations.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Congratulations());
    },
    TrackingScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TrackingScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(Splashscreen.name, path: '/'),
        _i2.RouteConfig(Usertype.name, path: '/Usertype'),
        _i2.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i2.RouteConfig(SignUpPersonal.name, path: '/sign-up-personal'),
        _i2.RouteConfig(SignUpEcommerce.name, path: '/sign-up-ecommerce'),
        _i2.RouteConfig(SignInscreen.name, path: '/sign-inscreen'),
        _i2.RouteConfig(Verification.name, path: '/Verification'),
        _i2.RouteConfig(Congratulations.name, path: '/Congratulations'),
        _i2.RouteConfig(TrackingScreen.name, path: '/tracking-screen')
      ];
}

/// generated route for
/// [_i1.Splashscreen]
class Splashscreen extends _i2.PageRouteInfo<void> {
  const Splashscreen() : super(Splashscreen.name, path: '/');

  static const String name = 'Splashscreen';
}

/// generated route for
/// [_i1.Usertype]
class Usertype extends _i2.PageRouteInfo<void> {
  const Usertype() : super(Usertype.name, path: '/Usertype');

  static const String name = 'Usertype';
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i2.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i1.SignUpPersonal]
class SignUpPersonal extends _i2.PageRouteInfo<void> {
  const SignUpPersonal()
      : super(SignUpPersonal.name, path: '/sign-up-personal');

  static const String name = 'SignUpPersonal';
}

/// generated route for
/// [_i1.SignUpEcommerce]
class SignUpEcommerce extends _i2.PageRouteInfo<void> {
  const SignUpEcommerce()
      : super(SignUpEcommerce.name, path: '/sign-up-ecommerce');

  static const String name = 'SignUpEcommerce';
}

/// generated route for
/// [_i1.SignInscreen]
class SignInscreen extends _i2.PageRouteInfo<void> {
  const SignInscreen() : super(SignInscreen.name, path: '/sign-inscreen');

  static const String name = 'SignInscreen';
}

/// generated route for
/// [_i1.Verification]
class Verification extends _i2.PageRouteInfo<void> {
  const Verification() : super(Verification.name, path: '/Verification');

  static const String name = 'Verification';
}

/// generated route for
/// [_i1.Congratulations]
class Congratulations extends _i2.PageRouteInfo<void> {
  const Congratulations()
      : super(Congratulations.name, path: '/Congratulations');

  static const String name = 'Congratulations';
}

/// generated route for
/// [_i1.TrackingScreen]
class TrackingScreen extends _i2.PageRouteInfo<void> {
  const TrackingScreen() : super(TrackingScreen.name, path: '/tracking-screen');

  static const String name = 'TrackingScreen';
}
