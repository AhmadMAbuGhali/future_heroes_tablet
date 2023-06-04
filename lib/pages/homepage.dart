import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/data/api/apiconst.dart';
import 'package:future_heroes_tablet/models/bio_model.dart';
import 'package:future_heroes_tablet/pages/drower.dart';

import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/routes/route_helper.dart';
import 'package:future_heroes_tablet/services/app_provider.dart';
import 'package:future_heroes_tablet/widgets/CardWidget.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';
import 'package:future_heroes_tablet/widgets/footer.dart';
import 'package:future_heroes_tablet/widgets/shortCut.dart';
import 'package:future_heroes_tablet/widgets/shortCutpart2.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'NoConnection.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<AppProvider>(builder: (context, provider, x) {

      if (provider.bio.isEmpty) {
        // Handle the case when provider.bio is empty
        return CircularProgressIndicator(); // Replace with an appropriate loading indicator or error message
      }

      final BioModel bio = provider.bio.first;
      return OfflineBuilder(
      child: Scaffold(
        appBar: AppBar(
            elevation: 10,
            title: Text(
              'FUTURE HEROES',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
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
                      fontSize: 16.sp),
                ),
                //  CustomTextTitle(text: 'اهلا وسهلا بك عزيزي  الزائر'),
                SizedBox(
                  height: 16.h,
                ),
                FutureBuilder<BioModel?>(
                  future: provider.getBio(),
                  builder: (BuildContext context, AsyncSnapshot<BioModel?> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        return Html(
                          data: snapshot.data!.title,
                        );
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        // Return null when there is no data or error to stop displaying the CircularProgressIndicator
                        return Container();
                      }
                    }
                    return CircularProgressIndicator();
                  },
                ),



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
                      fontSize: 16.sp),
                ),
                //  CustomTextTitle(text: 'من نحن'),
                LogoAuth(),
                Text(
                  'WhoWeAre2'.tr,
                  style: TextStyle(color: ColorManager.gray, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: FutureBuilder<BioModel?>(
                    future: provider.getBio(),
                    builder: (BuildContext context, AsyncSnapshot<BioModel?> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasData) {
                          return Html(
                            data: snapshot.data!.titleTwo,
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          // Return null when there is no data or error to stop displaying the CircularProgressIndicator
                          return Container();
                        }
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'OurServices'.tr,
                  style: TextStyle(
                      color: ColorManager.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'OurServices2'.tr,
                  style: TextStyle(color: ColorManager.gray, fontSize: 12.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),

                SizedBox(
                  height: 300.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: provider.subCategoryList.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          ShortCutWidget2(
                            text: provider.subCategoryList[index].name!,
                            img: ApiConstant.imageURL +
                                provider.subCategoryList[index].imageString!,
                          ),
                          SizedBox(
                            width: 20.w,
                          )
                        ],
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 30.h,
                ),
                CustomTextTitle(text: 'Shortcuts'.tr),
                SizedBox(
                  height: 30.h,
                ),
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
      ),
      connectivityBuilder:
          (BuildContext context, ConnectivityResult connectivity, Widget child) {

        final bool connected = connectivity != ConnectivityResult.none;
        return connected?child:NoConnectionScreen();


      },
    );});
  }
}
