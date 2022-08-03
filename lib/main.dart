import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/ecommerce_registration_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/login_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/registration_successful_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/account_type_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/personal_registration_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/verification_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/splash_screen.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(ChangeNotifierProvider<ThemeProvider>(
    create: (context) => ThemeProvider(),
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (_) => const SplashScreen(),
      AccountTypeScreen.route: (_) => const AccountTypeScreen(),
      PersonalRegistrationScreen.route: (_) =>
          const PersonalRegistrationScreen(),
      VerificationScreen.route: (_) => const VerificationScreen(),
      RegistrationSuccessfulScreen.route: (_) =>
          const RegistrationSuccessfulScreen(),
      LoginScreen.route: (_) => const LoginScreen(),
      EcommerceRegistrationScreen.route: (_) =>
          const EcommerceRegistrationScreen(),
    };

    return MaterialApp(
      title: 'Shipify',
      initialRoute: '/',
      routes: routes,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: ThemeProvider.current(context).primaryColor,
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(
                  bodyColor: ThemeProvider.current(context).primaryTextColor,
                  displayColor: ThemeProvider.current(context).primaryTextColor,
                )),
      ),
    );
  }
}
