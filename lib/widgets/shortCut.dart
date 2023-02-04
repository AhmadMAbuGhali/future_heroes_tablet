import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';

class ShortCutWidget extends StatelessWidget {
  String text;
  String img;
  ShortCutWidget({
    super.key,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.00),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: ColorManager.gray)),
      child: Column(
        children: [
          SvgPicture.asset(img),
          SizedBox(
            height: 8.h,
          ),
          Text(
            text,
            style: TextStyle(color: ColorManager.primary),
          ),
        ],
      ),
    );
  }
}
