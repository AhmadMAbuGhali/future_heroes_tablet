import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/pages/drower.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/custom_text_feild.dart';
import 'package:future_heroes_tablet/widgets/plusAndMin.dart';
import 'package:get/get.dart';

class FeedBack extends StatelessWidget {
  TextEditingController TitleController = TextEditingController();
  FeedBack({super.key});

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
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Container(
                    height: 128.h,
                    width: 128.w,
                    child: SvgPicture.asset(ImageAssets.feedback)),
                CustomTextTitle(text: 'تقديم تغذية راجعة'),
                Text(
                  'ساعدنا في تحسين الخدمة المقدمة',
                  style: TextStyle(
                      color: ColorManager.gray, fontSize: FontSize.s12.sp),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Column(
                  children: [
                    Column(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextFeild(
                            hintText: '',
                            label: 'عنوان الموضوع',
                            controller: TitleController),
                        SizedBox(
                          height: 32.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Row(
                            children: [
                              Text('الموضوع',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: ColorManager.primary,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 8,
                          decoration: InputDecoration(
                            fillColor: ColorManager.white,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 14.h),
                            hintText: 'ساعدنا في تحسين الخدمة المقدمة',
                            hintStyle: getRegularStyle(
                                color: ColorManager.otpDesc,
                                fontSize: FontSize.s12),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorManager.borderTextFiel,
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(12.r)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  color: ColorManager.primary, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  color: ColorManager.borderTextFiel,
                                  width: 1.0),
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
