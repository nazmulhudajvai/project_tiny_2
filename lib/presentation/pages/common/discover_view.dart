import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinny_app/presentation/pages/common/details.dart';
import 'package:tinny_app/presentation/pages/common/profile_view.dart';
import 'package:tinny_app/presentation/pages/home/home_view.dart';
import 'package:tinny_app/presentation/widgets/custom_button.dart';

import '../../../theams/app_color.dart';
import '../../widgets/custome_navbar.dart';
import 'calendar_view.dart';
import 'notify.dart';

class DiscoverView extends StatelessWidget {
  DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackLiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/image/logo.png', height: 36.h, width: 73.w),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.toNamed('/signup'); // navigate to signup
                  },
                  child: SvgPicture.asset(
                    'assets/image/Vector-2.svg',
                    width: 24.w,
                    height: 24.h,
                    color: AppColor.whiteLiteColor,
                  ),
                ),
                SizedBox(width: 10.w),
                InkWell(
                  onTap: () {
                    Get.to(
                      CustomNotificationPage(),
                    ); // navigate to notification
                  },
                  child: SvgPicture.asset(
                    'assets/image/Icon.svg',
                    width: 24.w,
                    height: 24.h,
                    color: AppColor.whiteLiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.builder(
                  shrinkWrap: true,
                  // ✅ important
                  physics: NeverScrollableScrollPhysics(),
                  // ✅ disables GridView scroll
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 159.w / 257.h,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 257.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                        color: AppColor.greyColor2,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/image/demo.png',
                                height: 90.h,
                                width: 139.w,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Center(
                              child: Text(
                                'Workout Target',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color: AppColor.whiteLiteColor,
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Start Date: ",
                                    style: GoogleFonts.inter(
                                      color: AppColor.whiteLiteColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Sep 20",
                                    style: GoogleFonts.inter(
                                      color: AppColor.whiteColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Center(
                              child: Text(
                                'Lorem ipsum dolor sit amet consectetur ac ....',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: AppColor.whiteLiteColor,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            InkWell(
                              onTap: () {
                                Get.to(DetailsView());
                              },
                              child: CustomButton(
                                title: "Let's do this",
                                height: 32.h,
                                width: 139.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      // ✅ FIXED: remove Obx
    );
  }
}
