import 'dart:ui';

class OnboardingPageModel {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String counterStep;
  final Color bgColor;

  OnboardingPageModel({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.counterStep,
    required this.bgColor,
});
}