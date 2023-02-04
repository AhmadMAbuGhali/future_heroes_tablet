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
import 'package:future_heroes_tablet/widgets/plusAndMin.dart';
import 'package:get/get.dart';

class CoachEvaluation extends StatefulWidget {
  const CoachEvaluation({super.key});

  @override
  State<CoachEvaluation> createState() => _CoachEvaluationState();
}

class _CoachEvaluationState extends State<CoachEvaluation> {
  String dropdownvalue = 'يوسف الجزار';
  var items = [
    'يوسف الجزار',
    'احمد ابو غالي',
    'احمد البشيتي',
    'سامي احمد',
  ];
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
                    child: SvgPicture.asset(ImageAssets.review)),
                CustomTextTitle(text: 'تقييم المدرب'),
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
                    Row(
                      children: [
                        Text(
                          'اختر اسم المدرب',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: ColorManager.primary,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 100.w,
                        ),
                        Container(
                          width: 128.w,
                          child: DropdownButton(
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    PlusWidget(
                      title: 'المعيار الاول',
                    ),
                    PlusWidget(
                      title: 'المعيار الثاني',
                    ),
                    PlusWidget(
                      title: 'المعيار الثالث',
                    ),
                    PlusWidget(
                      title: 'المعيار الرابع',
                    ),
                    PlusWidget(
                      title: 'المعيار الخامس',
                    ),
                    Column(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Row(
                            children: [
                              Text('otherDetails'.tr,
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
                            hintText: 'otherDetails'.tr,
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
