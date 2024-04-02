import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widgets/round_button.dart';

import 'package:food_delivery/common_widgets/round_textfield.dart';


class New_Password_View extends StatefulWidget {
  const New_Password_View({super.key}); // Convert 'key' to a super parameter

  @override
  State<New_Password_View> createState() => _New_Password_ViewState();
}

class _New_Password_ViewState extends State<New_Password_View> {

  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Text(
                "New Password",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 15),
              Text(

                "Please enter your new Password",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 60),
              RoundTextfield(
                hintText: "New Password",
                controller: txtPassword,

              ),

              const SizedBox(height: 30),
              RoundTextfield(
                hintText: "Confirm Password",
                controller: txtConfirmPassword,

              ),

              const SizedBox(
                height:25,
              ),
              RoundButton(title: "Next", onPressed:(){}),



            ],
          ),
        ),
      ),
    );
  }
}
