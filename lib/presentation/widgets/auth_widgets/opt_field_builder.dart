import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';

import '../../../core/app_theme/app_colors.dart';


class PinFieldBuilder extends StatelessWidget {
  final TextEditingController? controller;

  const PinFieldBuilder({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        controller: controller,
        appContext: context,
        length: 4,
        autoFocus: false,
        cursorColor: Colors.black,
        obscureText: false,
        hintCharacter: "-",
        textStyle: TextStyle(fontSize: 16.sp,color: AppColors.primaryColor),
        hintStyle: TextStyle(fontSize: 16.sp,color: AppColors.borderColor),
        keyboardType: TextInputType.phone,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(4.r),
          fieldHeight: 48.h,
          fieldWidth: 52.w,
          borderWidth: 1.w,
          activeFillColor: AppColors.primaryColor.withOpacity(0.05),
          selectedFillColor: AppColors.whiteColor,
          activeColor: AppColors.primaryColor,selectedColor: AppColors.primaryColor,
          inactiveColor: AppColors.borderColor,
          inactiveFillColor: AppColors.whiteColor,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        enableActiveFill: true,
        onCompleted: (code) {},
        onChanged: (value) {},).symmetricPadding(horizontal: 16);
  }
}