import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theams/app_color.dart';

class custom_notify_pop extends StatelessWidget {
  const custom_notify_pop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: AppColor.greyColor2,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/image/Icon.svg',
                width: 24.w,
                height: 24.h,
                color: AppColor.whiteLiteColor,
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You have a new message',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColor.whiteColor,
                  ),
                ),
                Text(
                  '2 min ago',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    color: AppColor.grey30Color,
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
