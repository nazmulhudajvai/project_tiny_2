import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tinny_app/presentation/pages/common/calendar_view.dart';
import 'package:tinny_app/presentation/pages/common/discover_view.dart'
    show DiscoverView;
import 'package:tinny_app/presentation/pages/home/home_view.dart';
import 'package:tinny_app/presentation/widgets/custom_menu.dart';
import 'package:tinny_app/presentation/widgets/custome_navbar.dart';
import '../../../../theams/app_color.dart';
import '../../controllers/bottom_navbar_controller.dart';
import '../../widgets/custom_join_button.dart';
import '../../widgets/custome_container.dart';
import 'package:tinny_app/presentation/pages/common/notify.dart'; // Make sure this path is correct

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final controller = Get.put(BottomNavController()); // Initialize controller

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
                    Get.toNamed('/signup'); // example: navigate to signup
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
                    ); // example: navigate to signup
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
                child: Column(
                  children: [
                    CustomContainer(button: custom_join_button()),
                    CustomContainer(button: custom_menu()),
                    CustomContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 0, // start with first tab selected
        onItemTapped: (index) {
          switch (index) {
            case 0:
              Get.to(() => HomeView());
              break;
            case 1:
              Get.to(() => DiscoverView());
              break;
            case 2:
              Get.to(() => CalendarView());
              break;
            case 3:
              Get.to(() => ProfileView());
              break;
          }
        },
      ),
    );
  }
}
