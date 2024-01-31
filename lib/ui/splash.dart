import 'dart:async';

import 'package:expense_app/constants/constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/routings/routes.dart';
import 'package:expense_app/size_config.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) { 
      Navigator.pushNamedAndRemoveUntil(context, Routes.IntroRoute, (route) => false);
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bachat App", style: customTextStyle(size: f25, family: Fonts.poppinsBold)),
            Text("Save Money, Secure Future", style: customTextStyle(size: f14, family: Fonts.poppinsMedium)),
          ],
        ),
      )),
    );
  }
}