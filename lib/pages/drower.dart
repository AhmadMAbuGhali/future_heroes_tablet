import 'package:flutter/material.dart';
import 'package:future_heroes_tablet/pages/CenterEvaluation.dart';
import 'package:future_heroes_tablet/routes/route_helper.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';
import 'package:get/get.dart';

class DrowerWidget extends StatelessWidget {
  const DrowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            title: Text('الرئيسية'),
            onTap: () {
              Get.toNamed(RouteHelper.homePage);
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('مجلة المركز'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('تقييم المدرب'),
            onTap: () {
              Get.toNamed(RouteHelper.coachEvaluation);
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('تقييم الخدمة بشكل كامل'),
            onTap: () {
              Get.toNamed(RouteHelper.centerEvaluation);
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('ساعدنا لتقديم خدمة افضل'),
            onTap: () {
              Get.toNamed(RouteHelper.feedBack);
            },
          ),
        ],
      ),
    );
  }
}
