import 'package:future_heroes_tablet/pages/CoachEvaluation.dart';
import 'package:future_heroes_tablet/pages/homepage.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String homePage = "/homePage";
  static const String coachEvaluation = "/coachEvaluation";

  static String getHomePage() => '$homePage';
  static String getCoachEvaluation() => '$coachEvaluation';

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
  ];
}
