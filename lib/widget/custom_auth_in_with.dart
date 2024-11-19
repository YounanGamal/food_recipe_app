import 'package:flutter/material.dart';

class CustomAuthInWith extends StatelessWidget {
  const CustomAuthInWith({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage('assets/icons/icons_google.png'),
            ),
          ),
        ),
        SizedBox(
          width: media.size.width * 0.06,
        ),
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage('assets/icons/facebook.png'),
            ),
          ),
        ),
      ],
    );
  }
}
