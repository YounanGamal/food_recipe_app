import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/page_route_name.dart';
import 'package:food_recipe_app/widget/custom_button.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/splash.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/Frame 2.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: media.size.height * 0.25,
              ),
              const Text(
                'Get',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Cooking',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              const Text(
                'Simple way to find Tasty Recipe',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: media.size.height * 0.08,
              ),
              SizedBox(
                width: 243,
                child: CustomButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, PageRouteName.login);
                  },
                  title: 'Start Cooking',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
