import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/services/app_provider.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../routes/route_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;


  Future<void> _loadResource() async{
    await  AppProvider().getBio();
    await  AppProvider().getContactUs();
    await  AppProvider().getAchievement();
    await  AppProvider().getPlans();
    await  AppProvider().getOffers();
    await  AppProvider().getSubCategory();
    await  AppProvider().getStandardRate();

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _loadResource();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(
      const Duration(seconds: 3),
      () async {
        await _loadResource();
          Get.offNamed(RouteHelper.homePage);



      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
                child: SizedBox(
              width: 266,
              height: 280,
              child: SvgPicture.asset(
                ImageAssets.logo,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
