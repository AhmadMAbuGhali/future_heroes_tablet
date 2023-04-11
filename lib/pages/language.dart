
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../locale/locale_controller.dart';
import '../resources/color_manager.dart';
import '../resources/my_flutter_app_icons.dart';
import '../resources/styles_manager.dart';
import '../widgets/CustomButtonPrimary.dart';
import '../widgets/CustomTextTitle.dart';
import 'NoConnection.dart';
import 'drower.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocalController controllerLang = Get.find();
    return OfflineBuilder(
      child: Scaffold(
        backgroundColor: ColorManager.backGround,
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(
                height: 40.h,
              ),
              Center(
                  child: CustomTextTitle(
                    text: "changeDisplayLang".tr,
                  )),
              SizedBox(
                height: 100.h,
              ),
              SizedBox(
                  height: 50.h,
                  child: CustomButtonPrimary(
                      text: "اللغة العربية",
                      onpressed: () {
                        controllerLang.changLocal("ar");
                      })),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                  height: 50.h,
                  child: CustomButtonPrimary(
                      text: "English",
                      onpressed: () {
                        controllerLang.changLocal("en");
                      })),
            ],
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