import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_heroes_tablet/pages/drower.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/resources/font_manager.dart';
import 'package:future_heroes_tablet/widgets/CustomButtonPrimary.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';
import 'package:future_heroes_tablet/widgets/shortCut.dart';
import 'package:future_heroes_tablet/widgets/shortCutpart2.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FUTURE HEROES',
          style: TextStyle(fontSize: 16.sp),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.primary,
        // leading: SvgPicture.asset(ImageAssets.logo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextTitle(text: 'اهلا وسهلا بك عزيزي  الزائر'),
              SizedBox(
                height: 16.h,
              ),
              Text(
                  'هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.'),

              // Text(
              //   'termBody'.tr,
              //   style: TextStyle(fontSize: FontSize.s12),
              // ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextTitle(text: 'من نحن'),
              LogoAuth(),
              Text(
                'دعنا نساعدك في التعرف على النادي بشكل افضل',
                style: TextStyle(
                    color: ColorManager.gray, fontSize: FontSize.s12.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                  'هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.'),
              SizedBox(
                height: 16.h,
              ),
              CustomButtonPrimary(text: 'عرض المزيد', onpressed: () {}),
              SizedBox(
                height: 50.h,
              ),
              CustomTextTitle(text: 'خدماتنا '),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'دعنا نساعدك في التعرف على الخدمات المقدمة من النادي بشكل افضل',
                style: TextStyle(
                    color: ColorManager.gray, fontSize: FontSize.s12.sp),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShortCutWidget2(
                      text: 'جمباز',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'كاراتيه',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'تايكواندو',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'جمباز',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'كاراتيه',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    ShortCutWidget2(
                      text: 'تايكواندو',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextTitle(text: 'اختصارات '),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShortCutWidget(
                      text: 'مجلة المركز',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ShortCutWidget(
                      text: 'تقييم المدرب',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ShortCutWidget(
                      text: 'تقييم المركز',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ShortCutWidget(
                      text: 'تغذية راجعة',
                      img: ImageAssets.Taekwondo_pictogram,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: DrowerWidget(),
    );
  }
}
