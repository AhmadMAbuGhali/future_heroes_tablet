import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/models/offer_model.dart';
import 'package:future_heroes_tablet/models/sub_category_model.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../data/api/dio_client.dart';
import '../data/api/exception_handling.dart';
import '../main.dart';
import '../resources/color_manager.dart';
class AppProvider extends ChangeNotifier {
  AppProvider() {
getOffers();
    getSubCategory();
  }

  // int? _idPostpone;
  //
  // int get idPostpone => _idPostpone!;
  //
  // void setPostponeId(int idPostpone) {
  //   _idPostpone = idPostpone;
  //   notifyListeners();
  // }

  // bool isLoading = false;
  //
  // changeIsLoading(bool value) {
  //   isLoading = value;
  //   notifyListeners();
  // }

  nullValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Required field";
    }
  }

  List<SubCategoryModel> subCategoryList = [];

  Future<String?> getSubCategory() async {
    try {
      subCategoryList = await DioClient.dioClient.getSubCategory();
    } on DioError catch (e) {
      String massage = DioException.fromDioError(e).toString();
      final snackBar = SnackBar(
        content: SizedBox(height: 32.h, child: Center(child: Text(massage))),
        backgroundColor: ColorManager.red,
        behavior: SnackBarBehavior.floating,
        width: 300.w,
        duration: const Duration(seconds: 1),
      );
    }
    notifyListeners();


    return null;
  }

  List<OffersModel> offerList = [];

  Future<String?> getOffers() async {
    try {
      offerList = await DioClient.dioClient.getOffers();
      print("object  1");
    } on DioError catch (e) {
      String massage = DioException.fromDioError(e).toString();
      final snackBar = SnackBar(
        content: SizedBox(height: 32.h, child: Center(child: Text(massage))),
        backgroundColor: ColorManager.red,
        behavior: SnackBarBehavior.floating,
        width: 300.w,
        duration: const Duration(seconds: 1),
      );
    }
    notifyListeners();


    return null;
  }



}
