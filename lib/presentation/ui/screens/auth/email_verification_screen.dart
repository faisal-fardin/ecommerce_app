import 'package:ecommerce/presentation/ui/screens/auth/otp_verification.dart';
import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:ecommerce/style_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Center(
                  child: SvgPicture.asset(
                    ImageAssets.CraftBayLogoSvg,
                    width: 110,
                  ),
              ),
              Text('Welcome Back', style: headTextStyle(),),
              const SizedBox(height: 8,),
              Text('Please enter your email address', style: subTitel(),),
              const SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 22),
                  decoration: appInputStyle('Email Address'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: buttonStyle(),
                    onPressed: () {
                      Get.offAll(const OtpVerification());
                    },
                    child: const Text('Next' , style: TextStyle(fontSize: 22),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
