

import 'package:ecommerce/presentation/ui/screens/auth/email_verification_screen.dart';
import 'package:ecommerce/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }


  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 3)).then((value) {

      Get.offAll(const EmailVerification());

    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: SvgPicture.asset(
                ImageAssets.CraftBayLogoSvg,
                width: 110,
              )),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(height: 16,),
          const Text('Version 1.0.0' ,style: TextStyle(fontSize: 16),),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
