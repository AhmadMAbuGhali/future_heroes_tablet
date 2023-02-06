import 'package:flutter/material.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/widgets/CardWidget.dart';
import 'package:get/get.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: ColorManager.primary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardWidget(
                    title: '00972-595-659-707',
                    icon: Icons.phone,
                  ),
                  CardWidget(
                    title: 'Yousef.n.aljazzar@gmail.com',
                    icon: MyFlutterApp.mail_alt,
                  ),
                  CardWidget(
                    title: 'Riyadh'.tr,
                    icon: Icons.home,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'FUTURE HEROES',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'يمكنك  مشاهدة صفحاتنا على المواقع التالية',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MyFlutterApp.linkedin_squared,
                            color: ColorManager.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MyFlutterApp.facebook_squared,
                            color: ColorManager.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MyFlutterApp.whatsapp,
                            color: ColorManager.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MyFlutterApp.twitter,
                            color: ColorManager.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MyFlutterApp.snapchat_ghost,
                            color: ColorManager.white,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
