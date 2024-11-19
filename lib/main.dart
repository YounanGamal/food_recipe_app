import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/page_route_name.dart';
import 'package:food_recipe_app/core/routes_generator.dart';
import 'package:food_recipe_app/modules/splash/splash_view.dart';

void main() {
  runApp(const FoodRecipeApp());
}

class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:PageRouteName.layout ,
      onGenerateRoute: RoutesGenerator.onGenerator,
    );
  }
}
