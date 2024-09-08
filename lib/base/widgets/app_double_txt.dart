import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleTxt extends StatelessWidget {
  const AppDoubleTxt(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyles.headline2,
          ),
          InkWell(
            onTap: () {},
            child: Text(smallText,
                style: AppStyles.textStyle
                    .copyWith(color: AppStyles.primaryColor)),
          )
        ],
      ),
    );
  }
}
