import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';
import '../../widgets/shared_widgets/language_drop_down_button.dart';
import '../../widgets/shared_widgets/logo_app_bar.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const LogoAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          SvgPicture.asset(
            SvgPath.introImage,
            height: 438.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
            "Select Language",
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(height: 10,),
          Text(
            "One platform for all your car service needs",
            style: CustomThemes.greyColor16TextStyle(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(height: 24,),
          const LanguageDropDownButton().symmetricPadding(horizontal: 16),
          const CustomSizedBox(height: 40,),
          CustomGradientButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.welcomeScreen);
            },
            borderRadius: 4,
            child: Text(
              "Next",
              style: CustomThemes.whiteColoTextTheme(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ).symmetricPadding(horizontal: 16),
        ],
      ),
    );
  }
}
