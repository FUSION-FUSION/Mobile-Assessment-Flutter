

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


import '__lib.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!BuildConfig.isDev) {
    ErrorWidget.builder = (FlutterErrorDetails details) => Container();
  }

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (val) {
      runApp(const MyApp(),
        
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: BuildConfig.isDev,
      title: AppInfo.appTitle,
      theme: ThemeData(
        primarySwatch: AppInfo.appPrimarySwatch,
        scaffoldBackgroundColor: Colors.white,
        textTheme: AppInfo.appTextTheme,
      ),
      home: const SplashScreen(),
    );
  }
}
