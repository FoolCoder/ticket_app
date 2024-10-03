import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextBlock extends StatelessWidget {
  const TextBlock({super.key, this.boxHeight = 300, this.flag = true});
  final bool flag;
  final double boxHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: MediaQuery.of(context).size.width * 0.45,
        height: boxHeight,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(flag ? AppMedia.hotel_room : ''),
                fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2, spreadRadius: 1, color: Colors.grey.shade200)
            ]),
        child: Text(
          flag ? '' : 'big box for testing long text sentece',
          style: AppStyles.headline3.copyWith(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
