import 'package:future_heroes_tablet/pages/CenterEvaluation.dart';
import 'package:future_heroes_tablet/pages/CoachEvaluation.dart';
import 'package:future_heroes_tablet/pages/feedback.dart';
import 'package:future_heroes_tablet/pages/homepage.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String homePage = "/homePage";
  static const String coachEvaluation = "/coachEvaluation";
  static const String centerEvaluation = "/centerEvaluation";
  static const String feedBack = "/feedBack";

  static String getHomePage() => '$homePage';
  static String getCoachEvaluation() => '$coachEvaluation';
  static String getCenterEvaluation() => '$centerEvaluation';
  static String getFeedBack() => '$feedBack';

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
  ];
}
