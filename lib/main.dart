import 'package:expense_app/constants/color_constants.dart';
import 'package:expense_app/constants/font_constants.dart';
import 'package:expense_app/routings/router.dart';
import 'package:expense_app/routings/routes.dart';
import 'package:expense_app/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: Fonts.poppinsRegular,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.primary)
      ),
      initialRoute: Routes.HomeRoute,
      onGenerateRoute: PageRouter.generateRoute
    );
  }
}