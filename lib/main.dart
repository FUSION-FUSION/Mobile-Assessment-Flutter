import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
      '/': (context) => const SplashScreen(),
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
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: ThemeProvider.current(context).primaryTextColor,
        ),
      ),
    );
  }
}