import 'package:flutter/material.dart';

class AppLayoutbuilder extends StatelessWidget {
  final int randonDivider;
  final double width;
  const AppLayoutbuilder(
      {super.key, required this.randonDivider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constrains.constrainWidth() / randonDivider).floor(),
            (generator) => SizedBox(
                  width: width,
                  height: 2,
                  child: const DecoratedBox(
                      decoration: BoxDecoration(
                    color: Colors.white,
                  )),
                )),
      );
    });
  }
}
