import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/constants/image_constants.dart';
import 'package:expense_app/models/intro_models.dart';
import 'package:expense_app/size_config.dart';
import 'package:flutter/material.dart';

TextStyle customTextStyle(
    {double? size, String? family, Color? color, FontWeight? weight, double? letterSpacing}) {
  return TextStyle(
    fontSize: size ?? f10,
    fontFamily: family ?? Fonts.poppinsRegular,
    color: color ?? Colors.black,
    fontWeight: weight ?? FontWeight.normal,
    letterSpacing: letterSpacing ?? 0,
  );
}

List<IntroModel> introScreens = [
  IntroModel(
      title: "Track your expense easy",
      subTitle: "Expenses and income can be easily tracked with our app",
      image: Images.intro1),
  IntroModel(
      title: "Save your money",
      subTitle: "Easy save and track with our app",
      image: Images.intro2),
  IntroModel(
      title: "Export your data",
      subTitle: "Save and share your data can be easily done",
      image: Images.intro3),
];