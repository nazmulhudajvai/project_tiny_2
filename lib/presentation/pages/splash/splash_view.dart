import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../res/assets/image_assets.dart';
import '../../controllers/splash_controller.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize SplashController
    Get.put(SplashController());

    return Scaffold(
      backgroundColor: Color(0xFF0B0B0B), // optional background
      body: Center(
        child: Image.asset('assets/image/logo.png', height: 213.h, width: 104.w),
      ),
    );
  }
}