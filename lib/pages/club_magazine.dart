import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';
import 'package:future_heroes_tablet/widgets/OffersWidget.dart';
import 'package:future_heroes_tablet/widgets/PlansWidget.dart';
import 'package:future_heroes_tablet/widgets/achievements.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../services/app_provider.dart';
import 'NoConnection.dart';
import 'drower.dart';

class ClubMagazine extends StatefulWidget {
  const ClubMagazine({Key? key}) : super(key: key);

  @override
  State<ClubMagazine> createState() => _ClubMagazineState();
}

class _ClubMagazineState extends State<ClubMagazine> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, x) {
      return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: OfflineBuilder(
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
            body: Center(
              child: Column(
                children: [
                  Image.asset(
                    ImageAssets.magazin,
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    'CenterMagazine'.tr,
                    style: getBoldStyle(color: ColorManager.black),
                  ),
                  Text(
                    'Feedback2'.tr,
                    style: TextStyle(
                        color: ColorManager.gray, fontSize: FontSize.s12.sp),
                  ),
                  SizedBox(
                      height: 30.h,
                      child: Container(
                        color: ColorManager.primary,
                        child: TabBar(
                          labelColor: ColorManager.white,
                          indicatorColor: ColorManager.green,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal'),
                          unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Tajawal'),
                          tabs: [
                            Tab(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    MyFlutterApp.fire,
                                    size: 16,
                                    color: ColorManager.white,
                                  ),
                                  Text('Clubachievements'.tr),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    MyFlutterApp.paper_plane,
                                    size: 16,
                                    color: ColorManager.white,
                                  ),
                                  Text('futureplans'.tr),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    MyFlutterApp.tags,
                                    size: 16,
                                    color: ColorManager.white,
                                  ),
                                  Text('offer'.tr),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      child: TabBarView(
                    children: [
                      // انجازات النادي
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.6,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: provider.achievement.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  PlansWidget(
                                    title: provider.achievement[index].name!,
                                    disc: provider.achievement[index].description!,
                                    image: provider.achievement[index].imageString,
                                  ),
                                  SizedBox(height: 20.h,)
                                ],
                              );
                            }),
                      ),
                      // الخطط المستقبلسية
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.6,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: provider.plans.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  PlansWidget(
                                      title: provider.plans[index].name!,
                                      disc: provider.plans[index].description!,
                                    image: provider.plans[index].imageString,
                                  ),
                                  SizedBox(height: 20.h,)
                                ],
                              );
                            }),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.6,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: provider.offerList.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  OffersWidget(
                                    title: provider.offerList[index].name!,
                                    disc: provider.offerList[index].description!
                                  ),
                                  SizedBox(height: 20.h,)
                                ],
                              );
                            }),
                      ),
                      // العروض
                    ],
                  ))
                ],
              ),
            ),
            drawer: DrowerWidget(),
          ),
          connectivityBuilder: (BuildContext context,
              ConnectivityResult connectivity, Widget child) {
            final bool connected = connectivity != ConnectivityResult.none;
            return connected ? child : NoConnectionScreen();
          },
        ),
      );
    });
  }
}
