import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
    this.icon,
    this.obscureText = false,
    this.controller,
  });

  final String hintText;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;
  Widget? icon;
  bool obscureText;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red, fontSize: 14),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xffD9D9D9), fontSize: 14),

        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0 * 1.5, vertical: 16.0),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffD9D9D9),
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff129575),
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),)
    ,
    );
  }
}
