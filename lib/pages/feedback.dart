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
import 'package:future_heroes_tablet/widgets/CustomTextFormAuth.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/custom_text_feild.dart';
import 'package:future_heroes_tablet/widgets/plusAndMin.dart';
import 'package:get/get.dart';

import 'NoConnection.dart';

class FeedBack extends StatelessWidget {
  TextEditingController TitleController = TextEditingController();
  FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                      height: 128.h,
                      width: 128.w,
                      child: SvgPicture.asset(ImageAssets.feedback)),
                  CustomTextTitle(text: 'Feedback'.tr),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Title'.tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorManager.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          CustomTextFormAuth(
                            labelText: 'Title'.tr,
                            hintText: 'AddressHint'.tr,
                            myController: TitleController,
                          ),
                          // CustomTextFeild(
                          //     hintText: 'اكتب العنوان هنا',
                          //     label: 'عنوان الموضوع',
                          //     controller: TitleController),
                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            children: [
                              Text('topic'.tr,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorManager.primary,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 8,
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
                                    color: ColorManager.gray,
                                  ),
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
                              text: 'Submitevaluation'.tr, onpressed: () {}),
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
  }
}
