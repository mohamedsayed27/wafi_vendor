import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_app_bar.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_text_form_field.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradiant_color_button.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/gradient_svg.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: CustomAppBar(
          title: "Review",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
        ),
        children: [
          CustomSizedBox(
            height: 32,
          ),
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  ImagesPath.categoriesDummy2,
                  fit: BoxFit.cover,
                ),
              ),
              CustomSizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abhimanyu",
                    style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "User",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Order ID: 6243692",
                    style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Audi Q3 2015",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ],
          ),
          CustomSizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.center,
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 28.sp,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          CustomSizedBox(
            height: 24,
          ),
          Text(
            "Please give your Feedback!",
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomSizedBox(
            height: 12,
          ),
          CustomTextField(
            hintText: "Write your comments here",
            filled: true,
            borderColor: AppColors.greyColorF3,
            fillColor: AppColors.greyColorF3,
            maxlines: 3,
          ),
          CustomSizedBox(
            height: 24,
          ),
          SizedBox(
            height: 90.h,
            child: Row(
              children: [
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => const UploadedImageWidget(),
                    separatorBuilder: (_, index) => const SizedBox(
                      width: 16,
                    ),
                    itemCount: 4,
                  ),
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                DottedBorder(
                  color: AppColors.primaryColor,
                  borderType: BorderType.RRect,
                  dashPattern: const [8, 4],
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.w, vertical: 27.h),
                  radius: const Radius.circular(16),
                  child: GradientSvg(
                    svgPath: SvgPath.add,
                    height: 24.h,
                    width: 24.w,
                  ),
                )
              ],
            ),
          ),
          CustomSizedBox(
            height: 96,
          ),
          CustomGradientButton(
            onPressed: (){
            },
              child: Text(
            "Submit",
            style: CustomThemes.whiteColoTextTheme(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ))
        ],
      ),
    );
  }
}

class UploadedImageWidget extends StatelessWidget {
  const UploadedImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: 88.w,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              height: 80.h,
              width: 80.w,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: AppColors.greyColorD8,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
          GradientSvg(
            svgPath: SvgPath.remove,
            height: 24.h,
            width: 24.w,
          ),
        ],
      ),
    );
  }
}
