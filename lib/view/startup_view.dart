import 'package:flutter/material.dart';
import 'package:food_delivery/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    // Add code after super
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomeView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/img/logo1.png",
            width: media.width * 0.55,
            height: media.width * 0.55,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
