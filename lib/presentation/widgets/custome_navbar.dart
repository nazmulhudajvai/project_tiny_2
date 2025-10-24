import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tinny_app/presentation/pages/common/calendar_view.dart';
import 'package:tinny_app/presentation/pages/common/discover_view.dart';
import 'package:tinny_app/presentation/pages/common/group_view_page.dart';
import 'package:tinny_app/presentation/pages/common/profile_view.dart';
import 'package:tinny_app/presentation/pages/home/home_view.dart';
import 'package:tinny_app/theams/app_color.dart';

// Import your pages

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0; // Track selected tab locally

  @override
  Widget build(BuildContext context) {
    final icons = [
      'assets/image/home.svg',
      'assets/image/ee.svg',
      'assets/image/clndr.svg',
      'assets/image/prfl.svg',
    ];

    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            height: 48.h,
            width: 222.w,
            decoration: BoxDecoration(
              color: AppColor.whiteColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                color: AppColor.whiteColor.withOpacity(0.15),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(icons.length, (index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // Update gradient indicator
                    });

                    // Navigate to pages with GetX
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
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 150),
                    curve: Curves.easeOut,
                    width: isSelected ? 56.w : 46.w,
                    height: isSelected ? 36.h : 42.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      gradient: isSelected
                          ? LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppColor.greenColor,
                                AppColor.greenColor2,
                              ],
                            )
                          : null,
                      color: isSelected ? null : Colors.transparent,
                      boxShadow: isSelected
                          ? [
                              BoxShadow(
                                color: AppColor.greenColor.withOpacity(0.5),
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ]
                          : [],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        icons[index],
                        height: 24.h,
                        width: 24.w,
                        color: isSelected
                            ? AppColor.blackColor
                            : AppColor.whiteColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
