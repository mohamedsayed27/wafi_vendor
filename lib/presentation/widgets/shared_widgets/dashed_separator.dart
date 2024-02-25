import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';

class MySeparator extends StatelessWidget {
  const MySeparator({
    Key? key,
    this.height = 2,
    this.color = AppColors.greyColor97,
  }) : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        var dashWidth = 5.0.w;
        final dashHeight = height.h;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return Container(
              width: dashWidth,
              height: dashHeight,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(2.r)),
            );
          }),
        );
      },
    );
  }
}
