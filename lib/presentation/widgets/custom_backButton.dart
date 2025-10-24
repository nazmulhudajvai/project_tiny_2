import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinny_app/theams/app_color.dart';

class Custom_back_button extends StatelessWidget {
  const Custom_back_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          transform: GradientRotation(7515),
          end: Alignment.bottomRight,
          colors: [
            AppColor.blackLiteColor,
            AppColor.whiteLiteColor,
            AppColor.blackLiteColor,
          ],
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Container(
        margin: EdgeInsets.all(.30),
        height: 24.h,
        width: 24.w,
        padding: EdgeInsets.all(2),
        // Border thickness
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.center,
            colors: [
              AppColor.blackLiteColor,
              AppColor.whiteLiteColor,

              AppColor.blackColor,
              AppColor.whiteLiteColor,
            ],
          ),
        ),
        child: SvgPicture.asset(
          'assets/image/back.svg',
          width: 7.w,
          height: 14.h,
          color: AppColor.whiteLiteColor,
        ),
      ),
    );
  }
}
