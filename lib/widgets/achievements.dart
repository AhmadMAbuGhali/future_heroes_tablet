import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:get/get.dart';

import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';

class Achievements extends StatefulWidget {
   Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return  isExpanded?Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.gray),
      ),
      height: MediaQuery.of(context).size.height*0.2,
    width: MediaQuery.of(context).size.width*0.9,
    child: Row(
      children: [
        Column(
          children: [
            Image.asset(ImageAssets.articl),
          ],
        ),
        Column(

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("offerTitle".tr,
                  style: getBoldStyle(
                      color: ColorManager.black,
                      fontSize: 14),),
                IconButton(onPressed: (){
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                    icon: Icon(Icons.keyboard_arrow_down)),


              ],
            ),
            Text("coachNoteBody".tr,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,),

          ],
        )
      ],
    ),
    )
        :Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.gray),
      ),
      height: MediaQuery.of(context).size.height*0.4,
      width: MediaQuery.of(context).size.width*0.9,
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(ImageAssets.articl),
            ],
          ),
          Column(
            children: [

              Row(
                children: [
                  Text("offerTitle".tr,
                    style: getBoldStyle(
                        color: ColorManager.black,
                        fontSize: 14),),
                  IconButton(onPressed: (){
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                      icon: Icon(Icons.keyboard_arrow_down)),


                ],
              ),
              Center(child: Text("coachNoteBody".tr,)),

            ],
          )
        ],
      ),
    );
  }
}
