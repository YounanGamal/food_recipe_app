import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/page_route_name.dart';
import 'package:food_recipe_app/modules/auth/login/login_view.dart';
import 'package:food_recipe_app/modules/auth/register/register_view.dart';
import 'package:food_recipe_app/modules/home/view/home_view.dart';
import 'package:food_recipe_app/modules/home/view/search/search_view.dart';
import 'package:food_recipe_app/modules/inactive/view/inactive_view.dart';
import 'package:food_recipe_app/modules/layout/layout_view.dart';
import 'package:food_recipe_app/modules/notification/view/notification_view.dart';
import 'package:food_recipe_app/modules/profile/view/profile_view.dart';
import 'package:food_recipe_app/modules/splash/splash_view.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerator(RouteSettings setting) {
    switch (setting.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: setting,
        );
      case PageRouteName.login:
        return MaterialPageRoute(
          builder: (context) => LoginView(),
          settings: setting,
        );
      case PageRouteName.register:
        return MaterialPageRoute(
          builder: (context) => RegisterView(),
          settings: setting,
        );
      case PageRouteName.layout:
        return MaterialPageRoute(
          builder: (context) => LayoutView(),
          settings: setting,
        );
      case PageRouteName.home:
        return MaterialPageRoute(
          builder: (context) => HomeView(),
          settings: setting,
        );
      case PageRouteName.search:
        return MaterialPageRoute(
          builder: (context) => SearchView(),
          settings: setting,
        );
      case PageRouteName.notification:
        return MaterialPageRoute(
          builder: (context) => NotificationView(),
          settings: setting,
        );
      case PageRouteName.profile:
        return MaterialPageRoute(
          builder: (context) => ProfileView(),
          settings: setting,
        );
      case PageRouteName.inactive:
        return MaterialPageRoute(
          builder: (context) => InactiveView(),
          settings: setting,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: setting,
        );
    }
  }
}
