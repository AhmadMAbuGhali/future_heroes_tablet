import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/resources/assets_manager.dart';
import 'package:get/get.dart';

import '../data/api/apiconst.dart';
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';

class Achievements extends StatefulWidget {
  String title;
  String disc;
  String? image;

  Achievements({Key? key, required this.title, required this.disc, this.image});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.gray),
                    borderRadius: BorderRadius.circular(10.0)),
                //   height: MediaQuery.of(context).size.height*0.2,
                // width: MediaQuery.of(context).size.width*0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          widget.image == ""
                              ? Image.asset(
                                  ImageAssets.logopng,
                                  // height: 200.h,
                                  // width: 200.w,
                                )
                              : Image.network(
                                  ApiConstant.imageURL + widget.image!)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.title,
                                  style: getBoldStyle(
                                      color: ColorManager.primary,
                                      fontSize: 14.sp),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    },
                                    icon: Icon(Icons.keyboard_arrow_down)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.disc,
                              softWrap: true,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.gray),
                    borderRadius: BorderRadius.circular(10.0)),
                // height: MediaQuery.of(context).size.height * 0.4,
                // width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          widget.image == ""
                              ? Image.asset(
                                  ImageAssets.logopng,
                                  // height: 200.h,
                                  // width: 200.w,
                                )
                              : Image.network(
                                  ApiConstant.imageURL + widget.image!)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.title,
                                  style: getBoldStyle(
                                      color: ColorManager.primary,
                                      fontSize: 14.sp),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    },
                                    icon: Icon(Icons.keyboard_arrow_up)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.disc,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
