import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../widgets/CustomTextTitle.dart';

class NoConnectionScreen extends StatelessWidget {

   NoConnectionScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
              width: 200.w,
              height: 200.h,
              child: SvgPicture.asset(
                ImageAssets.No_connection,
              ),
            )),
            SizedBox(
              height: 20.h,
            ),
            CustomTextTitle(text: 'problem'.tr),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "noInternet".tr,
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorManager.gray),
            ),

          ],
        ),
      ),
    );
  }
}
