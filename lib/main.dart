import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/routes/route_helper.dart';
import 'package:future_heroes_tablet/services/app_provider.dart';

import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locale/locale.dart';
import 'locale/locale_controller.dart';

late SharedPreferences shaedpref;
GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shaedpref = await SharedPreferences.getInstance();
  final prefs = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<AppProvider>(() => AppProvider());

  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController controller = Get.put(MyLocalController());
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            locale: shaedpref.getString("curruntLang") == null
                ? Get.deviceLocale
                : Locale(shaedpref.getString("curruntLang")!),
            translations: MyLocale(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Tajawal',
              primaryColor: Color(0xFF8A57DC),
            ),
            initialRoute: RouteHelper.homePage,
            getPages: RouteHelper.routes,
          );
        });
  }
}
