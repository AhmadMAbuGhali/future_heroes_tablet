// ignore_for_file: empty_catches

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:future_heroes_tablet/models/bio_model.dart';
import 'package:future_heroes_tablet/models/coach_standard_model.dart';
import 'package:future_heroes_tablet/models/contact_us_model.dart';
import 'package:future_heroes_tablet/models/gym_standard_model.dart';
import 'package:future_heroes_tablet/models/offer_model.dart';
import 'package:future_heroes_tablet/models/plans_models.dart';
import 'package:future_heroes_tablet/models/sub_category_model.dart';

import '../../main.dart';
import 'apiconst.dart';

class DioClient {
  DioClient._() {
    initDio();
  }

  // initDio
  static final DioClient dioClient = DioClient._();
  Dio? dio;

  initDio() {
    dio = Dio();
    dio?.options.baseUrl = ApiConstant.baseUrl;
  }


  Future<List<SubCategoryModel>> getSubCategory() async {
    Response response = await dio!.get(ApiConstant.subCategory,
        options: Options(
          headers: {"Accept-Language": shaedpref.getString("curruntLang")},
        ));
    List<SubCategoryModel> subCategoryList = [];
    subCategoryList =
        (response.data as List).map((e) => SubCategoryModel.fromJson(e)).toList();

    return subCategoryList;
  }

  Future<List<OffersModel>> getOffers() async {
    Response response = await dio!.get(ApiConstant.getOffers,
        options: Options(
          headers: {"Accept-Language": shaedpref.getString("curruntLang")},
        ));
    List<OffersModel> offerList = [];
    offerList =
        (response.data as List).map((e) => OffersModel.fromJson(e)).toList();

    return offerList;
  }

  Future<List<Plans>> getPlans() async {

    Response response = await dio!.get(ApiConstant.upComing,
        options: Options(
          headers: {"Accept-Language": shaedpref.getString("curruntLang")},
        ));
    List<Plans> plans = [];
    plans =
        (response.data as List).map((e) => Plans.fromJson(e)).toList();

    return plans;
  }

  Future<List<Plans>> getAchievement() async {

    Response response = await dio!.get(ApiConstant.achievement,
        options: Options(
          headers: {"Accept-Language": shaedpref.getString("curruntLang")},
        ));
    List<Plans> achievement = [];
    achievement =
        (response.data as List).map((e) => Plans.fromJson(e)).toList();

    return achievement;
  }


  Future<List<ContactUs>> getContactUs() async {

    Response response = await dio!.get(ApiConstant.contactsUs,
        options: Options(
          headers: {"Accept-Language": shaedpref.getString("curruntLang")},
        ));
    List<ContactUs> contactUs = [];
    contactUs =
        (response.data as List).map((e) => ContactUs.fromJson(e)).toList();

    return contactUs;
  }


  Future<List<GymStandardModel>> getGymStandard() async {
    Response response = await dio!.get(ApiConstant.gymStandard,
        options: Options(
          headers: {
            "Accept-Language": shaedpref.getString("curruntLang"),

          },
        ));
    List<GymStandardModel> gymStandard = [];
    gymStandard = (response.data as List)
        .map((e) => GymStandardModel.fromJson(e))
        .toList();
    return gymStandard;
  }


  Future<List<CoachStandardModel>> getCoachStandard() async {
    Response response = await dio!.get(ApiConstant.coachStandard,
        options: Options(
          headers: {
            "Accept-Language": shaedpref.getString("curruntLang"),

          },
        ));
    List<CoachStandardModel> coachStandard = [];
    coachStandard = (response.data as List)
        .map((e) => CoachStandardModel.fromJson(e))
        .toList();
    return coachStandard;
  }

  Future<List<BioModel>> getBio() async {
    Response response = await dio!.get(ApiConstant.bio,
        options: Options(
          headers: {
            "Accept-Language": shaedpref.getString("curruntLang"),

          },
        ));
    List<BioModel> bio = [];
    bio = (response.data as List)
        .map((e) => BioModel.fromJson(e))
        .toList();
    return bio;
  }


  // term
  // Future<TermsAndConditionsModel> termsAndConditions() async {
  //   Response response = await dio!.get(ApiConstant.termsAndConditions,
  //       options: Options(
  //         headers: {"Accept-Language": shaedpref.getString("curruntLang")},
  //       ));
  //   TermsAndConditionsModel term =
  //       TermsAndConditionsModel.fromJson(response.data[0]);
  //   return term;
  // }

//category


//Subscription
//   Future<List<OffersModel>> getOffer() async {
//     Response response = await dio!.get(ApiConstant.getOffers,
//         options: Options(
//           headers: {"Accept-Language": shaedpref.getString("curruntLang")},
//         ));
//     List<OffersModel> listOffer = [];
//     listOffer =
//         (response.data as List).map((e) => OffersModel.fromJson(e)).toList();
//
//     return listOffer;
//   }


}
