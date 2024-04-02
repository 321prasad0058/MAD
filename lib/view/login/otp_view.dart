import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widgets/round_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

/// OTP View Page for account verification

class OTP_View extends StatefulWidget {
  const OTP_View({Key? key});

  @override
  State<OTP_View> createState() => _OTP_ViewState();
}

class _OTP_ViewState extends State<OTP_View> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                "We have sent an OTP to your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 31,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Please check your mobile number 071*****12\ncontinue to reset your Password to email\n\n",

                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 60,
                child: OtpPinField(
                  key: _otpPinFieldController,
                  autoFillEnable: false,
                  textInputAction: TextInputAction.done,
                  onSubmit: (text) {
                    print('Entered pin is $text');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  onChange: (text) {
                    print('Enter on change pin is $text');
                  },
                  onCodeChanged: (code) {
                    print('onCodeChanged is $code');
                  },
                  otpPinFieldStyle: OtpPinFieldStyle(
                    defaultFieldBorderColor: Colors.transparent,
                    activeFieldBorderColor: Colors.transparent,
                    defaultFieldBackgroundColor: TColor.textfield,
                    activeFieldBackgroundColor: TColor.textfield,
                    filledFieldBackgroundColor: Colors.green,
                    filledFieldBorderColor: Colors.green,
                  ),
                  maxLength: 4,
                  showCursor: true,
                  cursorColor: Colors.indigo,
                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),
                  showCustomKeyboard: false,
                  cursorWidth: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                height: 30,
              ),
              RoundButton(
                title: "Next",
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      " Didn't receive ? ",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " Click here ",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
