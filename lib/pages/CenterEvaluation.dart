import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/pages/drower.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/plusAndMin.dart';
import 'package:get/get.dart';

import '../resources/color_manager.dart';

class CenterEvaluation extends StatelessWidget {
  const CenterEvaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FUTURE HEROES',
          style: TextStyle(fontSize: 16.sp),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.primary,
        // leading: SvgPicture.asset(ImageAssets.logo),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 128.w,
                  height: 128.h,
                  child: SvgPicture.asset(ImageAssets.reviews),
                ),
                CustomTextTitle(text: 'تقييم المركز'),
                Text(
                  'ساعدنا في تحسين الخدمة المقدمة',
                  style: TextStyle(fontSize: 12.sp, color: ColorManager.gray),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PlusWidget(title: 'المعيار الاول'),
                    PlusWidget(title: 'المعيار الثاني'),
                    PlusWidget(title: 'المعيار الثالث'),
                    PlusWidget(title: 'المعيارالرابع'),
                    PlusWidget(title: 'المعيار الخامس'),
                    PlusWidget(title: 'المعيار السادس'),
                    Text('otherDetails'.tr,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold,
                        )),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      decoration: InputDecoration(
                        fillColor: ColorManager.white,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        hintText: 'otherDetails'.tr,
                        hintStyle: getRegularStyle(
                            color: ColorManager.otpDesc,
                            fontSize: FontSize.s12),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorManager.borderTextFiel, width: 1.0),
                            borderRadius: BorderRadius.circular(12.r)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                              color: ColorManager.primary, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                              color: ColorManager.borderTextFiel, width: 1.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 1.0.w,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                    CustomButtonPrimary(
                        text: 'Submitevaluation'.tr,
                        onpressed: () {
                          // snakbarWidget(context,
                          //     Titel: 'تم الارسال بنجاح',
                          //     Description: 'شكرا لك ايها المعلم');

                          //    Get.toNamed(RouteHelper.showStudents);
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      drawer: DrowerWidget(),
    );
  }
}