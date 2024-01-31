import 'package:expense_app/constants/color_constants.dart';
import 'package:expense_app/constants/constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/models/intro_models.dart';
import 'package:expense_app/routings/routes.dart';
import 'package:expense_app/size_config.dart';
import 'package:expense_app/ui/customWidgets/curve_clip.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: AppColors.secondary,
          pages: List.generate(introScreens.length, (index) {
            return buildPageView(introScreens[index]);
          }),
          showSkipButton: true,
          skip: buildControlButton("Skip"),
          next: buildControlButton("Next"),
          done: buildControlButton("Done"),
          onDone: () {
            Navigator.pushNamedAndRemoveUntil(context, Routes.SignInRoute, (route) => false);
          },
          onSkip: () {},
          onChange: (val) {},
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: AppColors.blackColor,
            color: AppColors.blackColor.withOpacity(0.5),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
        ),
      ),
    );
  }

  PageViewModel buildPageView(IntroModel introModel) {
    return PageViewModel(
      title: introModel.title,
      body: introModel.subTitle,
      image: ClipPath(
        clipper: CurveClipper(),
        child: Container(
            color: AppColors.primary,
            height: double.maxFinite,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60),
            alignment: Alignment.center,
            child: Image.asset(introModel.image!)),
      ),
      decoration: PageDecoration(
        imageFlex: 2,
        titlePadding: EdgeInsets.only(top: h3, bottom: h1_5),
        bodyPadding: EdgeInsets.only(left: w4, right: w4),
        titleTextStyle: customTextStyle(
            size: f16, family: Fonts.poppinsBold, color: AppColors.blackColor),
        bodyTextStyle: customTextStyle(color: AppColors.blackColor),
      ),
    );
  }

  Widget buildControlButton(String title){
    return Container(
            padding: EdgeInsets.symmetric(horizontal: w3, vertical: w1),
            decoration: BoxDecoration(
                color: AppColors.blackColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(w1)),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700),
            ),
          );
  }
}
