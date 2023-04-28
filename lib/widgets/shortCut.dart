import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';

class ShortCutWidget extends StatelessWidget {
  String text;
  String img;
  void Function()? onpress;
  ShortCutWidget({
    super.key,
    required this.onpress,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 160.h,
      padding: EdgeInsets.all(10.00),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: ColorManager.gray)),
      child: InkWell(
        onTap: onpress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(img,width: 80.w,height: 80.h,),
            SizedBox(
              height: 2.h,
            ),
            Text(
              text,
              style: getBoldStyle(color: ColorManager.primary),
            ),
          ],
        ),
      ),
    );
  }
}
