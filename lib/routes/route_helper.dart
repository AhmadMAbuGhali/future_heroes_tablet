import 'package:future_heroes_tablet/pages/CenterEvaluation.dart';
import 'package:future_heroes_tablet/pages/CoachEvaluation.dart';
import 'package:future_heroes_tablet/pages/club_magazine.dart';
import 'package:future_heroes_tablet/pages/feedback.dart';
import 'package:future_heroes_tablet/pages/homepage.dart';
import 'package:future_heroes_tablet/pages/language.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String homePage = "/homePage";
  static const String coachEvaluation = "/coachEvaluation";
  static const String centerEvaluation = "/centerEvaluation";
  static const String feedBack = "/feedBack";
  static const String clubMagazine = "/clubMagazine";
  static const String language = "/language";

  static String getHomePage() => '$homePage';
  static String getCoachEvaluation() => '$coachEvaluation';
  static String getCenterEvaluation() => '$centerEvaluation';
  static String getFeedBack() => '$feedBack';
  static String getClubMagazine() => '$clubMagazine';
  static String getLanguage() => '$language';

  static List<GetPage> routes = [
    GetPage(
      name: homePage,
      page: () {
        return HomePage();
      },
    ),
    GetPage(
      name: coachEvaluation,
      page: () {
        return CoachEvaluation();
      },
    ),
    GetPage(
      name: centerEvaluation,
      page: () {
        return CenterEvaluation();
      },
    ),
    GetPage(
      name: feedBack,
      page: () {
        return FeedBack();
      },
    ),
    GetPage(
      name: clubMagazine,
      page: () {
        return ClubMagazine();
      },
    ),GetPage(
      name: language,
      page: () {
        return Language();
      },
    ),
  ];
}
