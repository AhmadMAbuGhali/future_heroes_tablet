import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/resources/color_manager.dart';
import 'package:future_heroes_tablet/routes/route_helper.dart';
import 'package:future_heroes_tablet/widgets/CustomTextTitle.dart';

import 'package:get/get.dart';

class CardCustomers extends StatelessWidget {
  String name;
  String DOB;
  String customerImage;

  CardCustomers(
      {super.key,
      required this.name,
      required this.DOB,
      required this.customerImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.gray, width: 2),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(customerImage),
              ),
            ],
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            children: [
              CustomTextTitle(text: name),
              Text(DOB,
                  style: TextStyle(
                      color: ColorManager.primary,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    //    Get.toNamed(RouteHelper.performanceEvaluation);
                  },
                  icon: Icon(Icons.arrow_forward))
            ],
          )
        ],
      ),
    );
  }
}
