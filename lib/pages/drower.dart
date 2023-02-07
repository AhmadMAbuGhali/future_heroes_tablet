import 'package:flutter/material.dart';
import 'package:future_heroes_tablet/locale/locale_controller.dart';
import 'package:future_heroes_tablet/pages/CenterEvaluation.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/routes/route_helper.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';
import 'package:get/get.dart';

class DrowerWidget extends StatelessWidget {
  const DrowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController controllerLang = Get.find();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: LogoAuth(),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('home'.tr),
            onTap: () {
              Get.toNamed(RouteHelper.homePage);
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('CenterMagazine'.tr),
            onTap: () {
              Get.toNamed(RouteHelper.clubMagazine);
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('CoachEvaluation'.tr),
            onTap: () {
              Get.toNamed(RouteHelper.coachEvaluation);
            },
          ),
          ListTile(
            leading: Icon(MyFlutterApp.thumbs_up),
            title: Text('Centerevaluation'.tr),
            onTap: () {
              Get.toNamed(RouteHelper.centerEvaluation);
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'.tr),
            onTap: () {
              Get.toNamed(RouteHelper.feedBack);
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('changeDisplayLang'.tr),
            onTap: () {
              Get.toNamed(RouteHelper.language);
            },
          ),
        ],
      ),
    );
  }
}
