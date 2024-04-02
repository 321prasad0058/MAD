import 'package:flutter/material.dart';
import '../common/color_extension.dart';
import '../view/login/login_view.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const RoundTextfield({
    Key? key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false, // Set default value for obscureText
  }) : super(key: key); // Include super constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType, // Include keyboardType
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText, // Use the provided hintText
          hintStyle: TextStyle(
            color: TColor.placeholder,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
