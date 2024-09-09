import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
    );
  }
}
