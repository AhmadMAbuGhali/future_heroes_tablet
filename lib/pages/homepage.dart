import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/pages/drower.dart';

import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/routes/route_helper.dart';
import 'package:future_heroes_tablet/widgets/CardWidget.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';
import 'package:future_heroes_tablet/widgets/footer.dart';
import 'package:future_heroes_tablet/widgets/shortCut.dart';
import 'package:future_heroes_tablet/widgets/shortCutpart2.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'WelcomeVisitor'.tr,
                style: TextStyle(
                    color: ColorManager.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              //  CustomTextTitle(text: 'اهلا وسهلا بك عزيزي  الزائر'),
              SizedBox(
                height: 16.h,
              ),
              Text('termBody'.tr),

              // Text(
              //   'termBody'.tr,
              //   style: TextStyle(fontSize: FontSize.s12),
              // ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'WhoWeAre'.tr,
                style: TextStyle(
                    color: ColorManager.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              //  CustomTextTitle(text: 'من نحن'),
              LogoAuth(),
              Text(
                'WhoWeAre2'.tr,
                style: TextStyle(color: ColorManager.gray, fontSize: 14),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text('termBody'.tr),
              SizedBox(
                height: 16.h,
              ),
              CustomButtonPrimary(text: 'ShowMore'.tr, onpressed: () {}),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'OurServices'.tr,
                style: TextStyle(
                    color: ColorManager.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'OurServices2'.tr,
                style: TextStyle(color: ColorManager.gray, fontSize: 12),
              ),
              SizedBox(
                height: 20.h,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShortCutWidget2(
                      text: 'Sculpture'.tr,
                      img: ImageAssets.sculpting,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'drawing'.tr,
                      img: ImageAssets.sketching,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'font'.tr,
                      img: ImageAssets.reading,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'Gymnastics'.tr,
                      img: ImageAssets.Gymnastics,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'Karate'.tr,
                      img: ImageAssets.karate,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'taekwondo'.tr,
                      img: ImageAssets.Taekwondo,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextTitle(text: 'Shortcuts'.tr),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShortCutWidget(
                      onpress: () {
                        Get.toNamed(RouteHelper.clubMagazine);
                      },
                      text: 'CenterMagazine'.tr,
                      img: ImageAssets.book,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ShortCutWidget(
                      onpress: () {
                        Get.toNamed(RouteHelper.coachEvaluation);
                      },
                      text: 'CoachEvaluation'.tr,
                      img: ImageAssets.review,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ShortCutWidget(
                      onpress: () {
                        Get.toNamed(RouteHelper.centerEvaluation);
                      },
                      text: 'Centerevaluation'.tr,
                      img: ImageAssets.reviews,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ShortCutWidget(
                      onpress: () {
                        Get.toNamed(RouteHelper.feedBack);
                      },
                      text: 'Feedback'.tr,
                      img: ImageAssets.feedback,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FooterWidget(),
            ],
          ),
        ),
      ),
      drawer: DrowerWidget(),
    );
  }
}
