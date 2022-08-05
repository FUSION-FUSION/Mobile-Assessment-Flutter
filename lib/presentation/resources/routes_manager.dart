import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/authentication/ecommerce/e-commerce_register_screen.dart';
import 'package:mobile_assessment_flutter/presentation/authentication/login.dart';
import 'package:mobile_assessment_flutter/presentation/authentication/verification.dart';
import 'package:mobile_assessment_flutter/presentation/main_screens/home.dart';
import 'package:mobile_assessment_flutter/presentation/onboarding/user_type.dart';
import 'package:mobile_assessment_flutter/presentation/onboarding/welcome.dart';

import '../authentication/personal/personal_register_screen.dart';
import '../main_screens/map.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String verificationRoute = "/verification";
  static const String welcomeRoute = "/welcome";
  static const String loginRoute = "/login";
  static const String personalRegisterRoute = "/personal_register";
  static const String eCommerceRegisterRoute = "/eCommerce_register";
  static const String homeRoute = "/home";
  static const String mapRoute = "/map";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashView());
      //
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const UserTypeScreen());

      case Routes.personalRegisterRoute:
        return MaterialPageRoute(
            builder: (_) => const PersonalRegisterScreen());

      case Routes.eCommerceRegisterRoute:
        return MaterialPageRoute(
            builder: (_) => const EcommerceRegisterScreen());

      case Routes.verificationRoute:
        return MaterialPageRoute(builder: (_) => const VerificationScreen());

      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.mapRoute:
        return MaterialPageRoute(builder: (_) => const MapScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No route found"),
              ),
              body: const Center(
                child: Text("No Route Found"),
              ),
            ));
  }
}
