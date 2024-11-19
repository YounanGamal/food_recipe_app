import 'package:flutter/material.dart';

class CustomTextSignInWith extends StatelessWidget {
  const CustomTextSignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            endIndent: 5,
            indent: 50,
            color: Color(0xffD9D9D9),
            thickness: 1,
          ),
        ),
        Text(
          'Or Sign in With',
          style: TextStyle(color: Color(0xffD9D9D9)),
        ),
        Expanded(
          child: Divider(
            endIndent: 50,
            indent: 5,
            color: Color(0xffD9D9D9),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
