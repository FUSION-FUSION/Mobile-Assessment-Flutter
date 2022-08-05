import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/presentation/resources/routes_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/theme_manager.dart';
import 'package:mobile_assessment_flutter/presentation/views/Home/home_view.dart';
import 'package:mobile_assessment_flutter/presentation/views/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shipify',
      theme: getApplicationTheme(),
      getPages: RouteManager.routes,
      home: SplashView(),
    );
  }
}
