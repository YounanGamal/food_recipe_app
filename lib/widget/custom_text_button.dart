import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.textButton,
      required this.onPressed});

  final String text;
  final String textButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(
              color: Color(0xffFF9C00),
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
}
