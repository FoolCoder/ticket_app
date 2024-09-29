import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class AppTxtIcon extends StatelessWidget {
  const AppTxtIcon(
      {super.key,
      this.iconTxt = '',
      required this.iconName,
      this.iconColor = const Color(0xFFBFC205)});
  final String iconTxt;
  final IconData iconName;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Row(
        children: [
          Icon(
            iconName,
            color: iconColor,
          ),
          Text(iconTxt)
        ],
      ),
    );
  }
}
