import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widgets/round_button.dart';
import '../../common_widgets/round_icon_button.dart';
import 'package:food_delivery/common_widgets/round_textfield.dart';
import '../../view/login/sign_up_view.dart';
import 'package:food_delivery/view/login/reset_password_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key}); // Convert 'key' to a super parameter

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                "Login",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Add your details to Login",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              RoundTextfield(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 25),
              RoundTextfield(
                hintText: "Your Password",
                controller: txtPassword,
                obscureText: true,
              ),

              const SizedBox(
                height:25,
              ),
              RoundButton(title: "Login", onPressed:(){}),

              const SizedBox(
                height: 15,
              ),

              TextButton(onPressed:(){
                Navigator.push(
                  context,MaterialPageRoute(
                    builder:(context)=> const Reset_Password_View()
                ), // Material Page Route
                );


              } ,
                  child:Text(
                    " Forgot your password ? ",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),),

              const SizedBox(
                height: 30,
              ),

             Text(
                " or Login with",
                  style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

          RoundIconButton(icon:"assets/img/facebook_logo.png",title: "Login with Facebook",color: const Color(0xff367FC0),onPressed: (){},),

              const SizedBox(
                height: 25,
              ),

              RoundIconButton(icon:"assets/img/google_logo.png",title: "Login with Google",color: const Color(0xffDD4B39),onPressed: (){},),

              const SizedBox(
                height: 80,
              ),


              TextButton(onPressed:(){
                Navigator.push(
                  context,MaterialPageRoute(
                    builder:(context)=> const SignUpView()
                ), // Material Page Route
                );
              } ,
                child:Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      " Don't have an account ? ",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      " Sign Up ",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),),


            ],
          ),
        ),
      ),
    );
  }
}
