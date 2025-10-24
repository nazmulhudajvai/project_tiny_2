import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinny_app/presentation/pages/auth/sign_up/sign_up_screen.dart';
import 'package:tinny_app/presentation/pages/common/notify.dart';

import '../../theams/app_color.dart';
import 'custom_join_button.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.button});

  final button;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: AppColor.blackLiteColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/image/Avatar.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Workout Target',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: AppColor.whiteColor,
                      ),
                    ),
                    Text(
                      '45 minutes ago',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: AppColor.whiteLiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(child: button),
            ],
          ),
          SizedBox(height: 12.h),

          SizedBox(height: 8.h),
          Text(
            'Enter the email associated with your account and we’ll send an email with code to reset account and we’ll send an email...',
            style: GoogleFonts.inter(
              color: AppColor.whiteLiteColor,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 16.h),
          Image.asset('assets/image/PostIMG.png', height: 247.h, width: 319.w),
          SizedBox(height: 16.h),

          // Like counter with dynamic content
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/image/goat.svg',
                    width: 24.w,
                    height: 24.h,
                    color: AppColor.whiteLiteColor,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '99',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: AppColor.whiteLiteColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/image/cmnt.svg',
                    width: 24.w,
                    height: 24.h,
                    color: AppColor.whiteLiteColor,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '99',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: AppColor.whiteLiteColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/image/send.svg',
                    width: 24.w,
                    height: 24.h,
                    color: AppColor.whiteLiteColor,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '99',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: AppColor.whiteLiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
