import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';

import '../resources/styles_manager.dart';

class ShortCutWidget2 extends StatelessWidget {
  String text;
  String img;
  ShortCutWidget2({
    super.key,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 150.w,
      padding: EdgeInsets.all(10.00),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: ColorManager.gray)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Container(height: 128.h, width: 128.h, child: SvgPicture.asset(img)),
          SizedBox(
            height: 24.h,
          ),
          Text(
            text,
            style: getBoldStyle(color: ColorManager.primary),

          ),
        ],
      ),
    );
  }
}
