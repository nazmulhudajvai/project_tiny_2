import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theams/app_color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_field_button.dart';
import '../../../widgets/custom_input_widget.dart';
import '../login/login_screen.dart';

// Controller for UI state only
class SignUpController extends GetxController {
  var isRemembered = false.obs;

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
}

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.blackLiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 20.h,
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
                top: 70,
                left: 0,
                right: 0,
                bottom: 0,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      'Commit. Unite. Achieve.',
                      style: GoogleFonts.inter(
                        color: AppColor.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'Create your new account',
                      style: GoogleFonts.inter(
                        color: AppColor.textGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      'Phone Number',
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
                      onChanged: (value1) => (),
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
                    SizedBox(height: 17.h),
                    Text(
                      'Password',
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
                      hintText: '***********',
                      hintFontWeight: FontWeight.w400,
                      hintTextColor: AppColor.whiteLiteColor,
                      fontSize: 12.sp,
                      textEditingController: controller.passwordController,
                      onChanged: (value1) => (),
                      leading: true,
                      obscureText: true,
                      leadingIconWidget: SvgPicture.asset(
                        'assets/image/password.svg',
                        width: 10.67.w,
                        height: 14.h,
                        color: AppColor.whiteLiteColor,
                      ),
                      leadingColor: AppColor.whiteColor,
                      leadingHeight: 18,
                      leadingWidth: 14,
                      horizontal: 12.w,
                      vertical: 5.h,
                      glassEffect: true,
                      borderGradientColors: [
                        AppColor.blackColor.withOpacity(0.3),
                        AppColor.blackColor.withOpacity(0.5),
                        AppColor.blackColor.withOpacity(0.1),
                        AppColor.blackColor.withOpacity(0.5),
                        AppColor.blackColor.withOpacity(0.5),
                      ],
                      borderWidth: 2.0,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Username',
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
                      hintText: 'ahmadjubayerr',
                      hintFontWeight: FontWeight.w400,
                      hintTextColor: AppColor.whiteLiteColor,
                      fontSize: 12.sp,
                      textEditingController: controller.usernameController,
                      onChanged: (value1) => (),
                      leading: true,
                      leadingIconWidget: SvgPicture.asset(
                        'assets/image/person.svg',
                        width: 10.67.w,
                        height: 14.h,
                        color: AppColor.whiteLiteColor,
                      ),
                      leadingColor: AppColor.whiteColor,
                      leadingHeight: 18,
                      leadingWidth: 14,
                      horizontal: 12.w,
                      vertical: 10.h,
                      glassEffect: true,
                      borderGradientColors: [
                        AppColor.blackColor,
                        AppColor.blackColor.withOpacity(0.1),
                        AppColor.blackColor,
                        AppColor.blackColor.withOpacity(0.5),
                      ],
                      borderWidth: 2.0,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Birthday',
                      style: GoogleFonts.inter(
                        color: AppColor.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        CustomButtonMain(text: 'Month'),
                        SizedBox(width: 10.w),
                        CustomButtonMain(text: 'Day'),
                        SizedBox(width: 10.w),
                        CustomButtonMain(text: 'Year'),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.isRemembered.toggle();
                            },
                            child: Obx(
                                  () => Container(
                                width: 17,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: controller.isRemembered.value
                                        ? Colors.white
                                        : AppColor.whiteColor,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: controller.isRemembered.value
                                        ? AppColor.whiteColor
                                        : Colors.transparent,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'I agree to all Term, Privacy Policy and fees',
                            style: GoogleFonts.inter(
                              color: AppColor.whiteLiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.50,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(height: 50.h),
                    CustomButton(
                      title: 'Sign Up',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      radius: 14.r,
                      height: 46.h,
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      spacing: 12.w,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.inter(
                            color: AppColor.whiteLiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.60,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              LoginScreen(),
                              transition: Transition.rightToLeft,
                            );
                          },
                          child: Text(
                            'Login',
                            style: GoogleFonts.inter(
                              color: AppColor.greenColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.70,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
