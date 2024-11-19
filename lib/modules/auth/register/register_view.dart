import 'package:flutter/material.dart';
import 'package:food_recipe_app/widget/custom_auth_in_with.dart';
import 'package:food_recipe_app/widget/custom_button.dart';
import 'package:food_recipe_app/widget/custom_text_button.dart';
import 'package:food_recipe_app/widget/custom_text_form_field.dart';
import 'package:food_recipe_app/widget/custom_text_sign_in_with.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                height: media.size.height * 0.01,
              ),
              const Text(
                'Create an account,',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Let’s help you set up your account,\n it won’t take long.',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: media.size.height * 0.02,
              ),
              const Text('Name'),
              SizedBox(
                height: media.size.height * 0.01,
              ),
              CustomTextFormField(
                hintText: 'Name',
                validator: (value) {},
              ),
              SizedBox(
                height: media.size.height * 0.03,
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
                height: media.size.height * 0.03,
              ),
              const Text('Enter Password'),
              SizedBox(
                height: media.size.height * 0.01,
              ),
              CustomTextFormField(
                hintText: 'Password',
                validator: (value) {},
              ),
              SizedBox(
                height: media.size.height * 0.03,
              ),
              const Text('Enter Password'),
              SizedBox(
                height: media.size.height * 0.01,
              ),
              CustomTextFormField(
                hintText: 'Password',
                validator: (value) {},
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    side: BorderSide(color: Color(0xffFF9C00)),
                    // fillColor: WidgetStatePropertyAll(Color(0xffFF9C00)),
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    'Accept terms & Condition',
                    style: TextStyle(
                      color: Color(0xffFF9C00),
                      fontSize: 11,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: media.size.height * 0.03,
              ),
              CustomButton(
                onPressed: () {},
                title: 'Sign Up',
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
                height: media.size.height * 0.02,
              ),
              CustomTextButton(
                text: 'Don’t have an account?',
                textButton: 'Sign in',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
