import 'package:expense_app/constants/color_constants.dart';
import 'package:expense_app/constants/constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/constants/image_constants.dart';
import 'package:expense_app/helper/helper.dart';
import 'package:expense_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          buildHeader(),
          Container(
            margin: EdgeInsets.only(left: w4_5, right: w4_5),
            padding: EdgeInsets.symmetric(horizontal: w5, vertical: h2),
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(color: AppColors.tertiary.withOpacity(0.2 ), borderRadius: BorderRadius.circular(w2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Balance", style: customTextStyle(size: f16, family: Fonts.poppinsSemiBold)),
                buildExpenseTracker(),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w4, vertical: h2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today's ${todayDayName()}",
                  style:
                      customTextStyle(size: f15, family: Fonts.poppinsMedium)),
              Text(todayDate(),
                  style: customTextStyle(
                      size: f10,
                      family: Fonts.poppinsRegular,
                      color: Colors.black38)),
            ],
          ),
          Image.asset(Images.notification)
        ],
      ),
    );
  }

  Widget buildExpenseTracker() {
    return Container(
      padding: EdgeInsets.only(top: h4),
      child: SfRadialGauge(
        axes: [
          RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: 180,
            endAngle: 0,
            radiusFactor: 1,
            canScaleToFit: true,
            axisLineStyle: AxisLineStyle(
              thickness: 0.1,
              color: AppColors.tertiary,
              thicknessUnit: GaugeSizeUnit.factor,
              cornerStyle: CornerStyle.bothCurve,
            ),
            annotations: [
              GaugeAnnotation(
                  axisValue: 50,
                  positionFactor: 0.7,
                  widget: Column(
                    children: [
                      Text(
                        "75%",
                        style: customTextStyle(
                            size: f16,
                            color: AppColors.primary,
                            family: Fonts.poppinsSemiBold),
                      ),
                      SizedBox(height: w1_5),
                      Text(
                        "You have spent",
                        style: customTextStyle(size: f12),
                      ),
                      SizedBox(height: w1),
                      Text(
                        "₹40000",
                        style: customTextStyle(
                            size: f20, family: Fonts.poppinsSemiBold),
                      ),
                      SizedBox(height: w1),
                      Text(
                        "of ₹ 70000",
                        style: customTextStyle(
                            size: f10,
                            family: Fonts.poppinsRegular,
                            color: Colors.black38),
                      ),
                    ],
                  ),
                  verticalAlignment: GaugeAlignment.near)
            ],
            pointers: <GaugePointer>[
              RangePointer(
                  value: 75,
                  width: 0.1,
                  color: AppColors.primary,
                  sizeUnit: GaugeSizeUnit.factor,
                  cornerStyle: CornerStyle.bothCurve)
            ],
          )
        ],
      ),
    );
  }
}
