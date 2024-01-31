import 'package:expense_app/constants/color_constants.dart';
import 'package:expense_app/constants/constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: w3),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text(
          title,
          style:
              customTextStyle(color: Colors.white, family: Fonts.poppinsRegular, size: f12),
        ),
      ),
    );
  }
}
