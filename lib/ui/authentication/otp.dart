import 'package:expense_app/constants/color_constants.dart';
import 'package:expense_app/constants/constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/constants/string_constants.dart';
import 'package:expense_app/routings/routes.dart';
import 'package:expense_app/size_config.dart';
import 'package:expense_app/ui/customWidgets/button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: h6),
            alignment: Alignment.center,
            child: Text(Strings.appName,
                style: customTextStyle(size: f17, family: Fonts.poppinsBold)),
          ),
          Container(
            margin: EdgeInsets.only(top: h6),
            child: Text(Strings.enterOtp,
                style:
                    customTextStyle(size: f14, family: Fonts.poppinsSemiBold)),
          ),
          SizedBox(height: h4),
          PinCodeTextField(
            length: 4,
            obscureText: false,
            mainAxisAlignment: MainAxisAlignment.center,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                fieldHeight: 55,
                fieldWidth: 55,
                fieldOuterPadding: const EdgeInsets.only(left: 14, right: 14),
                activeFillColor: Colors.white,
                activeColor: AppColors.secondary,
                selectedFillColor: AppColors.secondary,
                inactiveFillColor: AppColors.secondary,
                selectedColor: AppColors.secondary,
                inactiveColor: AppColors.secondary),
            cursorColor: Colors.black,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {});
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              return true;
            },
            appContext: context,
          ),
          Container(
            margin: EdgeInsets.only(top: h3),
            child: Text(Strings.didntReceiveOTP,
                style:
                    customTextStyle(size: f14, family: Fonts.poppinsSemiBold)),
          ),
          Container(
            margin: EdgeInsets.only(top: h3),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: AppColors.primary,
              width: 2,
            ))),
            child: Text(Strings.resentOtp,
                style: TextStyle(
                    fontSize: f12,
                    fontFamily: Fonts.poppinsSemiBold,
                    color: AppColors.primary)),
          ),
          SizedBox(height: h6),
          Padding(
            padding: EdgeInsets.only(left: w5, right: w5),
            child: CustomButton(
                title: Strings.verifyOtp,
                onTap: () {
                  Navigator.pushNamed(context, Routes.OtpRoute);
                }),
          ),
        ],
      )),
    );
  }
}
