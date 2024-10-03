import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class CustomText extends StatelessWidget {
  final String txt;
  final bool? bigtxt;
  final TextAlign textAlign;
  final bool? isColor;
  const CustomText(
      {super.key,
      required this.txt,
      this.bigtxt,
      this.textAlign = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: textAlign,
      style: bigtxt != null
          ? AppStyles.headline3.copyWith(color: Colors.white)
          : AppStyles.textStyle.copyWith(
              color: isColor == null ? Colors.white : Colors.black,
              fontSize: 12),
    );
  }
}
