import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l3iage_app/commons/constants_assets.dart';
import 'package:l3iage_app/commons/constants_string.dart';
import 'package:l3iage_app/commons/size_config.dart';
import 'package:l3iage_app/route/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SharedPreferences? sharedPreferences;

  setPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    startTime();
  }
  startTime() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    return Navigator.pushReplacementNamed(
        context,
        sharedPreferences?.getBool(kFirstTime) == null
        ? Routes.onBoarding : Routes.home
    );
  }

  @override
  void initState() {
    setPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Image(
          image: const AssetImage(kLogoApp),
          width: getProportionateScreenWidth(300),
          height: getProportionateScreenHeight(300),
        ),
      ),
    );
  }
}