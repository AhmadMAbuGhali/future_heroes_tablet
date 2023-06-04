import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/pages/drower.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';
import 'package:future_heroes_tablet/widgets/plusAndMin.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../routes/route_helper.dart';
import '../services/app_provider.dart';
import 'NoConnection.dart';

class CenterEvaluation extends StatelessWidget {
  const CenterEvaluation({super.key});

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
                builder: (context) => IconButton(
                  icon: Icon(MyFlutterApp.th_list),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
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
                    CustomTextTitle(text: 'Centerevaluation'.tr),
                    Text(
                      'Feedback2'.tr,
                      style:
                          TextStyle(fontSize: 12.sp, color: ColorManager.gray),
                    ),
                    SizedBox(
                        height: 350.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    provider.gymStandard[0].name!,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: ColorManager.primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue1 - 1;
                                          provider.setcurrentIntValue1(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                      Text('${provider.currentIntValue1}'),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue1 + 1;
                                          provider.setcurrentIntValue1(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    provider.gymStandard[1].name!,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: ColorManager.primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue2 - 1;
                                          provider.setcurrentIntValue2(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                      Text('${provider.currentIntValue2}'),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue2 + 1;
                                          provider.setcurrentIntValue2(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    provider.gymStandard[2].name!,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: ColorManager.primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue3 - 1;
                                          provider.setcurrentIntValue3(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                      Text('${provider.currentIntValue3}'),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue3 + 1;
                                          provider.setcurrentIntValue3(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    provider.gymStandard[3].name!,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: ColorManager.primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue4 - 1;
                                          provider.setcurrentIntValue4(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                      Text('${provider.currentIntValue4}'),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue4 + 1;
                                          provider.setcurrentIntValue4(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    provider.gymStandard[4].name!,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: ColorManager.primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue5 - 1;
                                          provider.setcurrentIntValue5(
                                              newValue.clamp(0, 5));
                                        },
                                      ),
                                      Text('${provider.currentIntValue5}'),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          final newValue =
                                              provider.currentIntValue5 + 1;
                                          provider.setcurrentIntValue5(
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
                    Row(
                      children: [
                        Text('Addnotes'.tr,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: ColorManager.primary,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      controller: provider.moreGymNote,
                      decoration: InputDecoration(
                        fillColor: ColorManager.white,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        hintText: 'Feedback2'.tr,
                        hintStyle: getRegularStyle(
                            color: ColorManager.otpDesc,
                            fontSize: FontSize.s12),
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
                          borderSide:
                              BorderSide(color: ColorManager.gray, width: 1.0),
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
                        onpressed: () async{
                          provider.rats = [];
                          Map<String, int> rate1 = {
                            provider.gymStandard[0].id!.toString():
                                provider.currentIntValue1
                          };
                          Map<String, int> rate2 = {
                            provider.gymStandard[1].id!.toString():
                                provider.currentIntValue2
                          };
                          Map<String, int> rate3 = {
                            provider.gymStandard[2].id!.toString():
                                provider.currentIntValue3
                          };
                          Map<String, int> rate4 = {
                            provider.gymStandard[3].id!.toString():
                                provider.currentIntValue4
                          };
                          Map<String, int> rate5 = {
                            provider.gymStandard[4].id!.toString():
                                provider.currentIntValue5
                          };
                          provider.rats.add(rate1);
                          provider.rats.add(rate2);
                          provider.rats.add(rate3);
                          provider.rats.add(rate4);
                          provider.rats.add(rate5);
                          provider.moreGymNote.clear();
                          try {

                            print(provider.rats);
                            print(provider.moreGymNote.text);

                            await provider.ServiceEvaluation(

                                provider.rats,
                                provider.moreGymNote.text);

                            print("Done");
                          } catch (e) {
                            print("Error");
                            print(e.toString());
                          }
                          // snakbarWidget(context,
                          //     Titel: 'تم الارسال بنجاح',
                          //     Description: 'شكرا لك ايها المعلم');

                          Get.toNamed(RouteHelper.homePage);
                        })
                  ],
                ),
              ),
            ),
          ),
          drawer: DrowerWidget(),
        ),
        connectivityBuilder: (BuildContext context,
            ConnectivityResult connectivity, Widget child) {
          final bool connected = connectivity != ConnectivityResult.none;
          return connected ? child : NoConnectionScreen();
        },
      );
    });
  }
}
