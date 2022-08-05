import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/presentation/views/Home/home_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/login/login_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/onboardingview/onboarding_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/register%20Personal/reg_personal_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/register%20ecommerence/reg_ecom_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/splash/splash_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/sucessfull/sucessful_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/tracking%201/tracking_one_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/tracking%202/tracking_two_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/tracking%203/tracking_three_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/verification%20expired/verification_expired_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/verification%20going/verification_going_view.dart';

class RouteManager {
  static const String splashRoute = '/';
  static const String onBoardRoute = '/onboard';
  static const String onLoginRoute = '/login';
  static const String onRegisterPersonalRoute = '/register_Personal';
  static const String onRegisterEcommerenceRoute = '/register_ecommerence';
  static const String onRegisterSuccessRoute = '/register_ecommerence';
  static const String onHomeRoute = '/home';
  static const String onVerificationGoingRoute = '/verification_going';
  static const String onVerificationRExpiredRoute = '/verification_Expired';
  static const String onTrackingOneRoute = '/tracking_one';
  static const String onTrackingTwoRoute = '/tracking_two';
  static const String onTrackingThreeRoute = '/tracking_three';

  //  route functions
  static String goToOnboardingRoute() => onBoardRoute;
  static String goTosplashRoute() => splashRoute;
  static String goToLoginRoute() => onLoginRoute;
  static String goToRegPersonalRoute() => onRegisterPersonalRoute;
  static String goToRegEcommerceRoute() => onRegisterEcommerenceRoute;
  static String goToRegSuccesRoute() => onRegisterSuccessRoute;
  static String goToHomeRoute() => onHomeRoute;
  static String goToVerificationGoingRoute() => onVerificationGoingRoute;
  static String goToVerificationExpiredRoute() => onVerificationRExpiredRoute;
  static String goToTrackingOneRoute() => onTrackingOneRoute;
  static String goToTrackingTwoRoute() => onTrackingTwoRoute;
  static String goToTrackingThreeRoute() => onTrackingThreeRoute;

// list of route
  static List<GetPage> routes = [
    GetPage(
      name: splashRoute,
      page: () => SplashView(),
    ),
    GetPage(
      name: onBoardRoute,
      page: () => OnBoardingView(),
    ),
    GetPage(
      name: onLoginRoute,
      page: () => LoginView(),
    ),
    GetPage(
      name: onRegisterPersonalRoute,
      page: () => RegistrationPersonalView(),
    ),
    GetPage(
      name: onRegisterEcommerenceRoute,
      page: () => RegistrationEcommenceView(),
    ),
    GetPage(
      name: onRegisterSuccessRoute,
      page: () => SucessfulView(),
    ),
    GetPage(
      name: onHomeRoute,
      page: () => HomeView(),
    ),
    GetPage(
      name: onVerificationGoingRoute,
      page: () => VerificationGoingView(),
    ),
    GetPage(
      name: onVerificationRExpiredRoute,
      page: () => VerificationExpiredView(),
    ),
    GetPage(
      name: onTrackingOneRoute,
      page: () => TrackingOneView(),
    ),
    GetPage(
      name: onTrackingTwoRoute,
      page: () => TrackingTwoView(),
    ),
    GetPage(
      name: onTrackingThreeRoute,
      page: () => TrackingThreeView(),
    ),
  ];
}
