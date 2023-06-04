import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_heroes_tablet/models/bio_model.dart';
import 'package:future_heroes_tablet/models/coach_standard_model.dart';
import 'package:future_heroes_tablet/models/contact_us_model.dart';

import 'package:future_heroes_tablet/models/get_coach.dart';
import 'package:future_heroes_tablet/models/gym_standard_model.dart';
import 'package:future_heroes_tablet/models/offer_model.dart';
import 'package:future_heroes_tablet/models/plans_models.dart';
import 'package:future_heroes_tablet/models/sub_category_model.dart';
import 'package:get/get.dart';

import '../data/api/dio_client.dart';
import '../data/api/exception_handling.dart';
import '../main.dart';
import '../models/contact_us_model.dart';
import '../resources/color_manager.dart';
class AppProvider extends ChangeNotifier {
  AppProvider() {
getOffers();
    getSubCategory();
getPlans();
getAchievement();
getContactUs();
getStandardRate();
getStandardCoach();
getBio();
getCoach();
  }


  loadData(){
    getOffers();
    getSubCategory();
    getPlans();
    getAchievement();
    getContactUs();
    getStandardRate();
    getStandardCoach();
    getBio();
    getCoach();
  }


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


  List<GetCoach> coach = [];

  Future<GetCoach?> getCoach() async {
    try {
      coach = await DioClient.dioClient.getCoach();
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


  }

  List<OffersModel> offerList = [];

  Future<String?> getOffers() async {
    try {
      offerList = await DioClient.dioClient.getOffers();

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



  }

List<Plans> plans = [];

  Future<String?> getPlans() async {
    try {
      plans = await DioClient.dioClient.getPlans();

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



  List<Plans> achievement = [];

  Future<String?> getAchievement() async {
    try {
      achievement = await DioClient.dioClient.getAchievement();

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



  }


  List<ContactUs> contactUs = [];

  Future<String?> getContactUs() async {
    try {
      contactUs = await DioClient.dioClient.getContactUs();

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



  }

  int _currentIntValue1 = 3;
  int _currentIntValue2 = 3;
  int _currentIntValue3 = 3;
  int _currentIntValue4 = 3;
  int _currentIntValue5 = 3;

  int get currentIntValue1 => _currentIntValue1;

  void setcurrentIntValue1(int currentIntValue1) {
    _currentIntValue1 = currentIntValue1;
    notifyListeners();
  }

  int get currentIntValue2 => _currentIntValue2;

  void setcurrentIntValue2(int currentIntValue2) {
    _currentIntValue2 = currentIntValue2;
    notifyListeners();
  }

  int get currentIntValue3 => _currentIntValue3;

  void setcurrentIntValue3(int currentIntValue3) {
    _currentIntValue3 = currentIntValue3;
    notifyListeners();
  }

  int get currentIntValue4 => _currentIntValue4;

  void setcurrentIntValue4(int currentIntValue4) {
    _currentIntValue4 = currentIntValue4;
    notifyListeners();
  }

  int get currentIntValue5 => _currentIntValue5;

  void setcurrentIntValue5(int currentIntValue5) {
    _currentIntValue5 = currentIntValue5;
    notifyListeners();
  }



  List<GymStandardModel> gymStandard = [];

  Future<GymStandardModel?> getStandardRate() async {
    try {
      gymStandard = await DioClient.dioClient.getGymStandard();
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
  }

  int _currentIntValueCoach1 = 3;
  int _currentIntValueCoach2 = 3;
  int _currentIntValueCoach3 = 3;
  int _currentIntValueCoach4 = 3;
  int _currentIntValueCoach5 = 3;

  int get currentIntValueCoach1 => _currentIntValueCoach1;

  void setcurrentIntValueCoach1(int currentIntValueCoach1) {
    _currentIntValueCoach1 = currentIntValueCoach1;
    notifyListeners();
  }

  int get currentIntValueCoach2 => _currentIntValueCoach2;

  void setcurrentIntValueCoach2(int currentIntValueCoach2) {
    _currentIntValueCoach2 = currentIntValueCoach2;
    notifyListeners();
  }

  int get currentIntValueCoach3 => _currentIntValueCoach3;

  void setcurrentIntValueCoach3(int currentIntValueCoach3) {
    _currentIntValueCoach3 = currentIntValueCoach3;
    notifyListeners();
  }

  int get currentIntValueCoach4 => _currentIntValueCoach4;

  void setcurrentIntValueCoach4(int currentIntValueCoach4) {
    _currentIntValueCoach4 = currentIntValueCoach4;
    notifyListeners();
  }

  int get currentIntValueCoach5 => _currentIntValueCoach5;

  void setcurrentIntValueCoach5(int currentIntValueCoach5) {
    _currentIntValueCoach5 = currentIntValueCoach5;
    notifyListeners();
  }

  List<CoachStandardModel> coachStandard = [];

  Future<CoachStandardModel?> getStandardCoach() async {
    try {
      coachStandard = await DioClient.dioClient.getCoachStandard();
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
  }


  TextEditingController moreGymNote = TextEditingController();
  TextEditingController moreCoachNote = TextEditingController();
  List<Map<String, int>> rats = [];
  List<Map<String, int>> ratsCoach = [];

  Future ServiceEvaluation(
      List<Map<String, int>> evalutions, String note) async {
    try {
      await DioClient.dioClient
          .ServiceEvaluation( evalutions, note);

      notifyListeners();
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
  }
  Future CoachEvaluation(
      List<Map<String, int>> evalutions, String note,String coachId) async {
    try {
      await DioClient.dioClient
          .CoachEvaluation( evalutions, note,coachId);

      notifyListeners();
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
  }



  List<BioModel> bio = [];



  Future<BioModel?> getBio() async {

    try {
      bio = await DioClient.dioClient.getBio();
      return bio.isNotEmpty ? bio.first : null;
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
  }

}
