import 'package:flutter/material.dart';
import '../../common/color_extension.dart';

enum RoundButtonType {
  bgPrimary, textPrimary
}

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  const RoundButton(
      {Key? key,
        required this.title,
        required this.onPressed,
        this.type = RoundButtonType.bgPrimary
      }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: type == RoundButtonType.bgPrimary ? null : Border.all(color: TColor.primary, width:1),
            color: type == RoundButtonType.bgPrimary ? TColor.primary : TColor.textfield,
            borderRadius: BorderRadius.circular(28)),
        child: Text(
          title,
          style: TextStyle(
              color: type == RoundButtonType.bgPrimary ? TColor.textfield : null,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
