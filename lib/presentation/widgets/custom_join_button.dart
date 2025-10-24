import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theams/app_color.dart';
import '../pages/common/notify.dart';

class custom_join_button extends StatelessWidget {
  const custom_join_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 32.h,
        width: 83.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.greenColor, AppColor.greenColor2],
            // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8), // Border radius
          border: Border.all(
            width: 1, // Border width
            color: Colors.transparent, // Transparent color
          ),
        ),
        child: InkWell(
          onTap: () {
            Get.to(CustomNotificationPage());
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.blackLiteColor,
              borderRadius: BorderRadius.circular(8), // Border radius
              border: Border.all(
                width: 1, // Border width
                color: Colors.transparent, // Transparent color
              ),
            ),
            child: Center(
              child: Text(
                'Join Tinny',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: AppColor.greenColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
