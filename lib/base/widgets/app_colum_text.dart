import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/customtext.dart';

class AppColumText extends StatelessWidget {
  final String txt1;
  final String txt2;
  final CrossAxisAlignment alignment;
  const AppColumText(
      {super.key,
      required this.txt1,
      required this.txt2,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        CustomText(
          txt: txt1,
          bigtxt: true,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomText(
          txt: txt2,
          bigtxt: true,
        )
      ],
    );
  }
}
