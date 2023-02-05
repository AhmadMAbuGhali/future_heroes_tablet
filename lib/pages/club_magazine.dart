import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:future_heroes_tablet/resources/styles_manager.dart';
import 'package:future_heroes_tablet/widgets/achievements.dart';

import '../resources/color_manager.dart';
import 'drower.dart';

class ClubMagazine extends StatelessWidget {
  const ClubMagazine({Key? key}) : super(key: key);

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
body: Column(
  children: [
Image.asset(ImageAssets.magazin,height: 150,width: 150,),
    Text("مجلة المركز ",style: getBoldStyle(color: ColorManager.black),),


    DefaultTabController(
        length: 3, // length of tabs
        initialIndex: 0,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          Container(
            child: TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'انجازات النادي'),
                Tab(text: 'الخطط المستقبلية '),
                Tab(text: 'العروض'),

              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height*0.70, //height of TabBarView
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
              ),
              child: TabBarView(children: <Widget>[
                Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context,index){
                    return Achievements();
                  }),
                ),
                Container(
                  child: Center(
                    child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),

              ])
          )
        ])
    ),
  ],
),
      drawer: DrowerWidget(),
    );
  }
}
