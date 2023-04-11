// ignore_for_file: empty_catches

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:future_heroes_tablet/models/offer_model.dart';
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
