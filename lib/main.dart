import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/provider/auth_provider.dart';
import 'package:mobile_assessment_flutter/screens/home/home_screen.dart';
import 'package:mobile_assessment_flutter/screens/onboarding/splash_screen.dart';
import 'package:mobile_assessment_flutter/screens/registration/verification_screen.dart';
import 'package:mobile_assessment_flutter/util/utils.dart';
import 'package:provider/provider.dart';

import 'firebase_service/auth_check.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
      ],
      child: const MyApp()));
}

final navigatorKey =GlobalKey<NavigatorState >();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shipify',
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home:  const SplashScreen(),
      routes: {
        HomeScreen.routeName :(context)=>const HomeScreen(),
        AuthCheck.routeName :(context)=>const AuthCheck(),
        OtpVerificationScreen.routeName:(context)=>const OtpVerificationScreen()
      },
    );
  }
}

