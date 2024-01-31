import 'package:expense_app/constants/color_constants.dart';
import 'package:expense_app/constants/constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/constants/string_constants.dart';
import 'package:expense_app/routings/routes.dart';
import 'package:expense_app/size_config.dart';
import 'package:expense_app/ui/customWidgets/button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: w5, right: w5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: h6),
              alignment: Alignment.center,
              child: Text(Strings.appName,
                  style: customTextStyle(size: f17, family: Fonts.poppinsBold)),
            ),
            Container(
              margin: EdgeInsets.only(top: h4),
              child: Text(Strings.signup,
                  style: customTextStyle(
                      size: f14, family: Fonts.poppinsSemiBold)),
            ),
            Container(
              margin: EdgeInsets.only(top: h1),
              child: Text(Strings.enterPhone,
                  style:
                      customTextStyle(size: f11, family: Fonts.poppinsMedium)),
            ),
            buildTextField(),
            SizedBox(height: h2_5),
            CustomButton(title: Strings.getcode, onTap: (){
              Navigator.pushNamed(context, Routes.OtpRoute);
            }),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: h2, left: w4, right: w4),
              child: Text(Strings.terms,
                  textAlign: TextAlign.center,
                  style: customTextStyle(
                      size: f9,
                      family: Fonts.poppinsMedium,
                      color: AppColors.blackColor)),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildTextField() {
    return Container(
      margin: EdgeInsets.only(top: h3),
      padding: EdgeInsets.only(left: w4, top: w1, bottom: w1),
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(h1_5)),
      child: TextFormField(
        style: customTextStyle(family: Fonts.poppinsSemiBold, letterSpacing: 4),
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter phone number",
            hintStyle:
                customTextStyle(color: AppColors.blackColor.withOpacity(0.4), size: f11)),
      ),
    );
  }
}
