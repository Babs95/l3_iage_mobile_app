import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:l3iage_app/commons/theme_config.dart';
import 'package:l3iage_app/route/routes.dart';
import 'package:l3iage_app/views/accueil/accueil_screen.dart';
import 'package:l3iage_app/views/onboarding/onboarding_screen.dart';
import 'package:l3iage_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'L3IAGE APP',
      debugShowCheckedModeBanner: false,
      theme: ligthThemeData(context),
      darkTheme: darkThemeData(context),
      home: const SplashScreen(),
      routes: {
        Routes.home: (BuildContext context) => const AccueilScreen(),
        Routes.onBoarding: (BuildContext context) => const OnBoardingScreen()
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
            builder: (BuildContext context) => const AccueilScreen(),
        );
      },
    );
  }
}

