import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:l3iage_app/commons/constants_color.dart';
import 'package:l3iage_app/commons/constants_string.dart';
import 'package:l3iage_app/route/routes.dart';
import 'package:l3iage_app/state_management/onboarding_state_controller.dart';
import 'package:l3iage_app/views/onboarding/OnboardingPageItem.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../commons/constants_assets.dart';
import '../../model/OnboardingPageModel.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String rootName = "/onboarding";
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = Get.put(OnBoardingStateController());
  SharedPreferences? sharedPreferences;

  initializeFirstTime() async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences?.setBool(kFirstTime, false);
  }

  @override
  void initState() {
    initializeFirstTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnboardingPageItem(
        item: OnboardingPageModel(
            title: kOnboardingPageTitle1,
            subTitle: kOnboardingPageSubTitle1,
            counterStep: kOnboardingPageCounterStep1,
            bgColor: kOnboardingColorPage1,
            imageUrl: kOnboardingImage1
        ),
      ),
      OnboardingPageItem(
        item: OnboardingPageModel(
            title: kOnboardingPageTitle2,
            subTitle: kOnboardingPageSubTitle2,
            counterStep: kOnboardingPageCounterStep2,
            bgColor: kOnboardingColorPage2,
            imageUrl: kOnboardingImage2
        ),
      ),

      OnboardingPageItem(
        item: OnboardingPageModel(
            title: kOnboardingPageTitle3,
            subTitle: kOnboardingPageSubTitle3,
            counterStep: kOnboardingPageCounterStep3,
            bgColor: kOnboardingColorPage3,
            imageUrl: kOnboardingImage3
        )
      ),

    ];
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
            liquidController: LiquidController(),
            onPageChangeCallback: (index) => controller.onPageChange(index),
          ),
          Obx(() => Visibility(
            visible: controller.currentPage.value == 2,
            child: Positioned(
              bottom: 15.0,
              right: 50.0,
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10.0),
                      side: const BorderSide(color: kDarkColor)
                  ),
                  onPressed: () => Navigator.pushReplacementNamed(context, Routes.home),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: kWhiteColor,
                    ),
                  )
              ),
            ),
          ))
        ],
      ),
    );
  }
}