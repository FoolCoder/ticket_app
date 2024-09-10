import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleTxt extends StatelessWidget {
  const AppDoubleTxt(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;
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
            onTap: () {
              func();
            },
            child: Text(smallText,
                style: AppStyles.textStyle
                    .copyWith(color: AppStyles.primaryColor)),
          )
        ],
      ),
    );
  }
}
