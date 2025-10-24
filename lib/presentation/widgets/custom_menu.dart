import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theams/app_color.dart';
import '../pages/common/notify.dart';

class custom_menu extends StatelessWidget {
  const custom_menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SvgPicture.asset(
          'assets/image/mennu.svg',
          width: 24.w,
          height: 24.h,
          color: AppColor.whiteLiteColor,
        ),
      ),
    );
  }
}
