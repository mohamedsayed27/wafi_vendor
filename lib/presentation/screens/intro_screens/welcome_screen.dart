import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_elevated_button.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/custom_text_button.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';
import '../../widgets/shared_widgets/language_drop_down_button.dart';
import '../../widgets/shared_widgets/logo_app_bar.dart';
import '../../widgets/shared_widgets/white_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const LogoAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                SvgPath.introImage,
                height: 438.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            RichText(
              text: TextSpan(
                text: "Welcome to ",
                style: CustomThemes.greyColor16TextStyle(context).copyWith(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                    TextSpan(
                      text: "WAFI!",
                      style: CustomThemes.colorE02TextStyle(context).copyWith(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                ],
              ),
            ).symmetricPadding(horizontal: 16),
              const CustomSizedBox(
                height: 10,
              ),
              Text(
                "One platform for all your car service needs",
                style: CustomThemes.greyColor16TextStyle(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ).symmetricPadding(horizontal: 16),
              const CustomSizedBox(
                height: 33,
              ),
              Row(
                children: [
                  Expanded(
                    child: WhiteElevatedButton(
                      onPressed: () {Navigator.pushNamed(context, ScreenName.loginScreen);},
                      child: Text(
                        "Login",
                        style: CustomThemes.colorE02TextStyle(context).copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const CustomSizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomGradientButton(
                      onPressed: () {Navigator.pushNamed(context, ScreenName.registerScreen);},
                      borderRadius: 4,
                      child: Text(
                        "Register",
                        style: CustomThemes.whiteColoTextTheme(context).copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ).symmetricPadding(horizontal: 16),
              const CustomSizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  "By Joining Wafi, you agree to the ",
                  textAlign: TextAlign.center,
                  style: CustomThemes.greyColor99TextStyle(context).copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(child: CustomTextButton(title: 'Terms & Conditions',onPressed: (){},))
            ],
          ),
        ),
      ),
    );
  }
}
