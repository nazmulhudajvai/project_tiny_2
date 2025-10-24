import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theams/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_input_widget.dart';
import 'otp_verify_view.dart';

/// Simple GetX controller for this screen
class ForgetPasswordController extends GetxController {
  var phoneController = TextEditingController();
}

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});

  // Instantiate the controller
  final ForgetPasswordController controller = Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackLiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 30.h,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 68,
                width: 139,
                child: Image.asset(
                  'assets/image/logo.png',
                  height: 213.h,
                  width: 104.w,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
              top: 100,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Forgot Password',
                    style: GoogleFonts.inter(
                      color: AppColor.whiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Enter your mobile number, and Tinny will send a one-time password',
                    style: GoogleFonts.inter(
                      color: AppColor.textGreyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.70,
                    ),
                    textAlign: TextAlign.center,
                  ),SizedBox(height: 35.h),
                  Positioned(
                    top: 150.h,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/image/l1.png',
                      height: 213.h,
                      width: 104.w,
                    ),
                  ),
                  SizedBox(height: 40.h),

                  Text(
                    'Enter Your Phone Number',
                    style: GoogleFonts.inter(
                      color: AppColor.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  CustomInputWidget(
                    backgroundColor: Colors.transparent,
                    height: 40.2.h,
                    borderRadius: 12,
                    hintText: '0123456789',
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: AppColor.whiteLiteColor,
                    fontSize: 12.sp,
                    textEditingController: controller.phoneController,
                    onChanged: (value) {},
                    leading: true,
                    leadingIconWidget: SvgPicture.asset(
                      'assets/image/call.svg',
                      width: 10.67.w,
                      height: 14.h,
                      color: AppColor.whiteLiteColor,
                    ),
                    leadingColor: AppColor.whiteColor,
                    leadingHeight: 18,
                    leadingWidth: 14,
                    horizontal: 12.w,
                    vertical: 11.h,
                    glassEffect: true,
                    borderGradientColors: [
                      AppColor.blackColor.withOpacity(0.3),
                      AppColor.blackColor.withOpacity(0.5),
                      AppColor.blackColor.withOpacity(0.1),
                      AppColor.blackColor.withOpacity(0.5),
                      AppColor.blackColor.withOpacity(0.5),
                    ],
                    borderWidth: 1.0,
                  ),
                  SizedBox(height: 40.h),
                  InkWell(
                    onTap: () {
                      Get.to(() => OtpVerifyView());
                    },
                    child: CustomButton(
                      title: 'Send OTP',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      radius: 14.r,
                      height: 46.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
