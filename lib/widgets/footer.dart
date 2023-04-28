import 'package:flutter/material.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/my_flutter_app_icons.dart';
import 'package:future_heroes_tablet/widgets/CardWidget.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/app_provider.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, x) {
      return
        SizedBox(
         height: 280,
          child: ListView.builder(
              itemCount: provider.contactUs.length,
              itemBuilder: (context,index){
            return Container(

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
                            title: provider.contactUs[0].phoneNumber!,
                            icon: Icons.phone,
                          ),
                          CardWidget(
                            title: provider.contactUs[0].email!,
                            icon: MyFlutterApp.mail_alt,
                          ),
                          CardWidget(
                            title: provider.contactUs[0].region!,
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
                                  onPressed: () async {
                                    _launchURL(provider.contactUs[0].instagram!);

                                  },
                                  icon: Icon(
                                    MyFlutterApp.instagram,
                                    color: ColorManager.white,
                                  )),
                              IconButton(
                                  onPressed: () async {
                                    _launchURL(provider.contactUs[0].faceBook!);

                                  },
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
                                  onPressed: () async {

                                    _launchURL(provider.contactUs[0].twitter!);

                                  },
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
          }),
        );
        });
  }
}
