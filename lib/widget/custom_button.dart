import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.onPressed, required this.title});

  VoidCallback onPressed;
final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: MediaQuery.of(context).size.width*0.30),
      height: 54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xff129575),
      onPressed: onPressed,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 22,
          )
        ],
      ),
    );
  }
}
