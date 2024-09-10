import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class CustomText extends StatelessWidget {
  final String txt;
  final bool bigtxt;
  final TextAlign textAlign;
  const CustomText(
      {super.key,
      required this.txt,
      this.bigtxt = false,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: textAlign,
      style: bigtxt
          ? AppStyles.headline3.copyWith(color: Colors.white)
          : AppStyles.textStyle.copyWith(color: Colors.white, fontSize: 12),
    );
  }
}
