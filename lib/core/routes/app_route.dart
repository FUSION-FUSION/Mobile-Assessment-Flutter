import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/utils/enums.dart';
import 'package:mobile_assessment_flutter/features/dashboard/screens/home_screen.dart';
import 'package:mobile_assessment_flutter/features/registration/screens/choose_user_type_screen.dart';
import 'package:mobile_assessment_flutter/features/registration/screens/login_screen.dart';
import 'package:mobile_assessment_flutter/features/registration/screens/registration_success_screen.dart';
import 'package:mobile_assessment_flutter/features/registration/screens/sign_up_screen.dart';
import 'package:mobile_assessment_flutter/features/registration/screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/features/waybill/screens/tracking_screen.dart';

class AppRoute {
  static const accountroute = '/acount';
  static const signuproute = '/signup';
  static const loginroute = '/login';
  static const verificationroute = '/verification';
  static const regsuccessroute = '/reg-success';
  static const homeroute = '/home';
  static const trackingroute = 'tracking';

  static final navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signuproute:
        final usertype = settings.arguments as UserType;
        return MaterialPageRoute(builder: (_) {
          return SignUpScreen(userType: usertype);
        });
      case loginroute:
        return MaterialPageRoute(builder: (_) {
          return const LoginScreen();
        });
      case verificationroute:
        return MaterialPageRoute(builder: (_) {
          return const VerificationScreen();
        });
      case regsuccessroute:
        return MaterialPageRoute(builder: (_) {
          return const RegistrationSuccessScreen();
        });
      case homeroute:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
      case trackingroute:
        return MaterialPageRoute(builder: (_) {
          return const TrackingScreen();
        });
      case accountroute:
        return MaterialPageRoute(builder: (_) {
          return const ChooseUserTypeScreen();
        });
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body:
                Center(child: Text('No route available for ${settings.name}')),
          ),
        );
    }
  }
}
