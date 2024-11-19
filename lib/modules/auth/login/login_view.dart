import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/page_route_name.dart';
import 'package:food_recipe_app/widget/custom_auth_in_with.dart';
import 'package:food_recipe_app/widget/custom_button.dart';
import 'package:food_recipe_app/widget/custom_text_button.dart';
import 'package:food_recipe_app/widget/custom_text_form_field.dart';
import 'package:food_recipe_app/widget/custom_text_sign_in_with.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(media.size.width * 0.07),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: media.size.height * 0.068,
              ),
              const Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: media.size.height * 0.08,
              ),
              const Text('Email'),
              SizedBox(
                height: media.size.height * 0.01,
              ),
              CustomTextFormField(
                hintText: 'Email',
                validator: (value) {},
              ),
              SizedBox(
                height: media.size.height * 0.04,
              ),
              const Text('Enter Password'),
              SizedBox(
                height: media.size.height * 0.01,
              ),
              CustomTextFormField(
                hintText: 'Password',
                validator: (value) {},
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xffFF9C00),
                    fontSize: 11,
                  ),
                ),
              ),
              SizedBox(
                height: media.size.height * 0.03,
              ),
              CustomButton(
                onPressed: () {},
                title: 'Sign In',
              ),
              SizedBox(
                height: media.size.height * 0.02,
              ),
              SizedBox(
                height: media.size.height * 0.02,
              ),
              const CustomTextSignInWith(),
              const SizedBox(
                height: 20,
              ),
              const CustomAuthInWith(),
              SizedBox(
                height: media.size.height * 0.07,
              ),
              CustomTextButton(
                text: 'Don’t have an account?',
                textButton: 'Sign up',
                onPressed: () {
                  Navigator.pushNamed(context, PageRouteName.register);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
