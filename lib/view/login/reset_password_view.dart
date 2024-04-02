import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widgets/round_button.dart';

import 'package:food_delivery/common_widgets/round_textfield.dart';
import 'package:food_delivery/view/login/new_password.dart';

import 'package:food_delivery/view/login/new_password.dart';

class Reset_Password_View extends StatefulWidget {
  const Reset_Password_View({super.key}); // Convert 'key' to a super parameter

  @override
  State<Reset_Password_View> createState() => _Reset_Password_ViewState();
}

class _Reset_Password_ViewState extends State<Reset_Password_View> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
                "Reset Password",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 15),
              Text(

                "Please enter your email to receive a\nlink to create a new password to email",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 60),
              RoundTextfield(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height:25,
              ),
              RoundButton(title: "Send", onPressed:(){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> const New_Password_View(),),);

              }),



            ],
          ),
        ),
      ),
    );
  }
}
