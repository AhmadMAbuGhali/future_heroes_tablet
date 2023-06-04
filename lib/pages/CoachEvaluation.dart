import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/pages/drower.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/plusAndMin.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../models/get_coach.dart';
import '../routes/route_helper.dart';
import '../services/app_provider.dart';
import 'NoConnection.dart';

class CoachEvaluation extends StatefulWidget {
  const CoachEvaluation({super.key});

  @override
  State<CoachEvaluation> createState() => _CoachEvaluationState();
}

class _CoachEvaluationState extends State<CoachEvaluation> {
  String dropdownvalue = 'يوسف الجزار';

  String? coachId;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, x) {
      return OfflineBuilder(
        child: Scaffold(
          appBar: AppBar(
              elevation: 10,
              title: Text(
                'FUTURE HEROES',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              backgroundColor: ColorManager.primary,
              leading: Builder(
                builder: (context) =>
                    IconButton(
                      icon: Icon(MyFlutterApp.th_list),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
              )
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
                  CustomTextTitle(text: 'CoachEvaluation'.tr),
                  Text(
                    'Feedback2'.tr,
                    style: TextStyle(
                        color: ColorManager.gray, fontSize: FontSize.s12.sp),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'choseCoach'.tr,
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
                        height: 35.h,
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          isExpanded: true,
                          itemHeight: 30,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: ColorManager.primary,
                          ),
                          iconSize: 30.sp,
                          buttonHeight: 60.h,
                          buttonPadding:
                          const EdgeInsets.only(left: 12, right: 12),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          items: provider.coach.map((item) =>
                              DropdownMenuItem<String>(
                                value: item.fullName,
                                child: Text(
                                  item.fullName!,
                                  style:  TextStyle(fontSize: 14.sp),
                                ),
                              )).toList() ?? [],

                          // validator: (value) {
                          //   if (value == null) {
                          //     return 'يجب تحديد تصنيف المهمة';
                          //   }
                          //   return null;
                          // },
                    onChanged: (value) {
                      GetCoach selectedCoach = provider.coach.firstWhere((coach) => coach.fullName == value);
                       coachId = selectedCoach.id!;
                      // do something with the coachId, such as sending it to an API or storing it in a state variable
                      },

                        ),


                        // DropdownButton(
                        //     value: dropdownvalue,
                        //     icon: const Icon(Icons.keyboard_arrow_down),
                        //     items: items.map((String items) {
                        //       return DropdownMenuItem(
                        //         value: items,
                        //         child: Text(
                        //           items,
                        //           style: TextStyle(
                        //               fontSize: 12.sp,
                        //               color: ColorManager.primary,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       );
                        //     }).toList(),
                        //     onChanged: (String? newValue) {
                        //       setState(() {
                        //         dropdownvalue = newValue!;
                        //       });
                        //     },
                        //   ),
                      )
                    ],
                  ),
                  SizedBox(
                      height: 350.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  provider.coachStandard[0].name!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach1 - 1;
                                        provider.setcurrentIntValueCoach1(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                    Text('${provider.currentIntValueCoach1}'),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach1 + 1;
                                        provider.setcurrentIntValueCoach1(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  provider.coachStandard[1].name!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach2 - 1;
                                        provider.setcurrentIntValueCoach2(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                    Text('${provider.currentIntValueCoach2}'),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach2 + 1;
                                        provider.setcurrentIntValueCoach2(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  provider.coachStandard[2].name!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach3 - 1;
                                        provider.setcurrentIntValueCoach3(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                    Text('${provider.currentIntValueCoach3}'),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach3 + 1;
                                        provider.setcurrentIntValueCoach3(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  provider.coachStandard[3].name!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach4 - 1;
                                        provider.setcurrentIntValueCoach4(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                    Text('${provider.currentIntValueCoach4}'),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach4 + 1;
                                        provider.setcurrentIntValueCoach4(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  provider.coachStandard[4].name!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach5 - 1;
                                        provider.setcurrentIntValueCoach5(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                    Text('${provider.currentIntValueCoach5}'),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        final newValue =
                                            provider.currentIntValueCoach5 + 1;
                                        provider.setcurrentIntValueCoach5(
                                            newValue.clamp(0, 5));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      Text('Addnotes'.tr,
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
                  controller: provider.moreCoachNote,
                  decoration: InputDecoration(
                    fillColor: ColorManager.white,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w, vertical: 14.h),
                    hintText: 'Feedback2'.tr,
                    hintStyle: getRegularStyle(
                        color: ColorManager.otpDesc,
                        fontSize: FontSize.s12.sp),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorManager.gray, width: 1.0),
                        borderRadius: BorderRadius.circular(12.r)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                          color: ColorManager.primary, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                          color: ColorManager.gray, width: 1.0),
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
                    onpressed: ()  async{
            provider.ratsCoach = [];
            Map<String, int> rate1 = {
            provider.coachStandard[0].id!.toString():
            provider.currentIntValueCoach1
            };
            Map<String, int> rate2 = {
            provider.coachStandard[1].id!.toString():
            provider.currentIntValueCoach2
            };
            Map<String, int> rate3 = {
            provider.coachStandard[2].id!.toString():
            provider.currentIntValueCoach3
            };
            Map<String, int> rate4 = {
            provider.coachStandard[3].id!.toString():
            provider.currentIntValueCoach4
            };
            Map<String, int> rate5 = {
            provider.coachStandard[4].id!.toString():
            provider.currentIntValueCoach5
            };
            provider.ratsCoach.add(rate1);
            provider.ratsCoach.add(rate2);
            provider.ratsCoach.add(rate3);
            provider.ratsCoach.add(rate4);
            provider.ratsCoach.add(rate5);
            try {

            print(provider.ratsCoach);
            print(provider.moreCoachNote.text);
            print(coachId!);

            await provider.CoachEvaluation(

            provider.ratsCoach,
            provider.moreCoachNote.text,
                coachId!
           );

            print("Done");
            } catch (e) {
            print("Error");
            print(e.toString());
            }
            // snakbarWidget(context,
            //     Titel: 'تم الارسال بنجاح',
            //     Description: 'شكرا لك ايها المعلم');

            Get.toNamed(RouteHelper.homePage);
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
      ),
      connectivityBuilder:
      (BuildContext context, ConnectivityResult connectivity, Widget child) {

      final bool connected = connectivity != ConnectivityResult.none;
      return connected?child:NoConnectionScreen();


      },
      );
    });
  }
}
