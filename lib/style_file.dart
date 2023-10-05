import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

TextStyle headTextStyle() {
  return const TextStyle(

    fontSize: 35,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );
}

TextStyle subTitel() {
  return  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade600,
  );
}

InputDecoration appInputStyle(label) {
  return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(),
      disabledBorder: OutlineInputBorder(),
      border:  OutlineInputBorder(),
      labelText:label ,
  );
}

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 10),
    shadowColor: const Color(0x00000004),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    elevation: 4,
  );
}

PinTheme AppOTPStyle() {
  return PinTheme(
    inactiveColor: AppColor.primaryColor,
    inactiveFillColor: Colors.white,
    selectedColor: AppColor.primaryColor,
    activeColor: AppColor.primaryColor,
    selectedFillColor: Colors.white,
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    borderWidth: 0.5,
    fieldWidth: 50,
    activeFillColor: Colors.white,
  );
}
