import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinny_app/presentation/pages/common/goal_status_screen.dart';

import '../../../theams/app_color.dart';
import '../../widgets/custom_backButton.dart';
import '../../widgets/custom_notify_pop.dart';

class CustomNotificationPage extends StatelessWidget {
  const CustomNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use existing controller instance

    return Scaffold(
      backgroundColor: AppColor.blackLiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(
                      CustomNotificationPage(),
                    ); // example: navigate to signup
                  },
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(GoalStatusScreen());
                        },
                        child: Custom_back_button(),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  'Notification',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: AppColor.whiteColor,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    custom_notify_pop(),
                    SizedBox(height: 10.h),
                    custom_notify_pop(),
                    SizedBox(height: 10.h),
                    custom_notify_pop(),
                    SizedBox(height: 10.h),
                    custom_notify_pop(),
                    SizedBox(height: 10.h),
                    custom_notify_pop(),
                    SizedBox(height: 10.h),
                    custom_notify_pop(),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
