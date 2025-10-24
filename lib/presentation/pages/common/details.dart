import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinny_app/presentation/widgets/custom_backButton.dart';
import 'package:tinny_app/presentation/widgets/custom_button.dart';
import '../../../../theams/app_color.dart';
import '../../controllers/bottom_navbar_controller.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key});

  final controller = Get.put(BottomNavController()); // Initialize controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackLiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          Padding(padding: EdgeInsets.all(12.0), child: Custom_back_button()),
          Center(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Container(
                  height: 628.h,
                  width: 335.w,
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.h),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Image Section
                                Center(
                                  child: Image.asset(
                                    'assets/image/demo2.png',
                                    height: 120.h,
                                    width: 335.w,
                                  ),
                                ),
                                SizedBox(height: 10.h),

                                // Title
                                Text(
                                  'Fitness & Physical Health',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                SizedBox(height: 5.h),

                                // Subtitle
                                Text(
                                  'Start Date: Sep 20 - End Date: Sep 30.',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: AppColor.whiteLiteColor,
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                Text(
                                  'About',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                Text(
                                  ".Screenshot from fitness app (Strava, Apple Health)",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                Text(
                                  '.Gym check-in photo or short workout clip',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                Text(
                                  '.Before/after progress photo',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                Text(
                                  'Group Activity',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                // RichText for Start Date
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Tiny Size ",
                                        style: GoogleFonts.inter(
                                          color: AppColor.whiteLiteColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "20 People",
                                        style: GoogleFonts.inter(
                                          color: AppColor.whiteColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Effort Frequency:",
                                        style: GoogleFonts.inter(
                                          color: AppColor.whiteLiteColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Daily",
                                        style: GoogleFonts.inter(
                                          color: AppColor.whiteColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Label
                                    Text(
                                      'Proof Submission: ',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: AppColor.whiteLiteColor,
                                      ),
                                    ),

                                    // Flexible text next to it
                                    Expanded(
                                      child: Text(
                                        'Screenshot from fitness app (Strava, Apple Health)',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                          color: AppColor.whiteColor,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 100.h),

                                // Button
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(DetailsView());
                                    },
                                    child: CustomButton(
                                      title: "Let's do this",
                                      height: 48.h,
                                      width: 335.w,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
