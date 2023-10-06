import 'package:ecommerce/presentation/ui/screens/splash_screen.dart';
import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.exo2TextTheme(),
        primarySwatch: MaterialColor(AppColor.primaryColor.value , AppColor().color),

      ),
    );
  }
}
