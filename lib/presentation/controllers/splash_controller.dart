import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../core/routes/app_pages.dart';
 // Make sure to import your app_pages.dart

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void onInit() {
    super.onInit();

    // Initialize animation
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeIn,
      ),
    );

    // Start animation
    animationController.forward();

    // Navigate after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // Example: Direct navigation to the Login page after 3 seconds
      Get.offAllNamed(Routes.LOGIN);  // Adjust this based on your logic
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
