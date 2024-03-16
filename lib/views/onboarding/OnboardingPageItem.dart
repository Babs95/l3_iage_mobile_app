import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l3iage_app/commons/constants_assets.dart';
import 'package:l3iage_app/model/OnboardingPageModel.dart';

class OnboardingPageItem extends StatefulWidget {
  const OnboardingPageItem({super.key, required this.item});
  final OnboardingPageModel item;

  @override
  State<OnboardingPageItem> createState() => _OnboardingPageItemState();
}

class _OnboardingPageItemState extends State<OnboardingPageItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.item.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(widget.item.imageUrl),
          ),
          Column(
            children: [
              Text(
                  widget.item.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                widget.item.subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300
                ),
              )
            ],
          ),
          Text(
            widget.item.counterStep,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300
            ),
          )
        ],
      ),
    );
  }
}