import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/auth/login.dart';
import 'package:mobile_assessment_flutter/screens/auth/registration.dart';
import 'package:mobile_assessment_flutter/screens/auth/verification_page.dart';
import 'package:mobile_assessment_flutter/screens/splash/splash_screen.dart';

import '../screens/auth/account_success.dart';
import '../screens/auth/user_type.dart';
import '../screens/dashboard/dashboard.dart';
import '../waybill/waybill.dart';

class RouteHelper {
  static const String initial = '/';
  static const String userType = '/user-type';
  static const String login = '/login';
  static const String register = '/register';
  static const String verification = '/verification';
  static const String accountSuccess = '/account-success';
  static const String dashboard = '/dashboard';
  static const String waybill = '/waybill';

  static String getInitial() => initial;
  static String getUserType() => userType;
  static String getLogin() => login;
  static String getRegister(int isPersonal) =>
      '$register?isPersonal=$isPersonal';
  static String getVerification() => verification;
  static String getAccountSuccess() => accountSuccess;
  static String getDashboard() => dashboard;
  static String getWaybill() => waybill;

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return const SplashScreen();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: userType,
        page: () {
          return const UserType();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: login,
        page: () {
          return const Login();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: register,
        page: () {
          var isPersonal = Get.parameters['isPersonal'];
          bool isPersonalBool = int.parse(isPersonal!) == 1;
          return Registration(isPersonal: isPersonalBool);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: verification,
        page: () {
          return const VerificationPage();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: accountSuccess,
        page: () {
          return const AccountSuccess();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: dashboard,
        page: () {
          return const Dashboard();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: waybill,
        page: () {
          return const WaybillPage();
        },
        transition: Transition.fadeIn),
  ]
  ;
}
