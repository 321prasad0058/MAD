import 'package:flutter/material.dart';
import 'package:food_delivery/view/login/login_view.dart';
import 'package:food_delivery/view/login/sign_up_view.dart';
import '../../common_widgets/round_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
                width: media.width,
              ),
              Image.asset(
                "assets/img/logo2.png",
                width: media.width * 0.90,
                height: media.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Login",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                );
              },
            ),
          ),
          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Create an Account",
              type: RoundButtonType.textPrimary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpView()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
