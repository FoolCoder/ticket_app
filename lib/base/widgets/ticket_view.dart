import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: Container(
        margin: const EdgeInsets.fromLTRB(30.0, 2, 30, 2),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NYC',
                  style: AppStyles.headline3.copyWith(color: Colors.white),
                ),
                // Expanded(child: Container()),
                const BigDot(),
                const SizedBox(
                  child: AppLayoutbuilder(),
                ),
                const BigDot(),
                Text(
                  'NYC',
                  style: AppStyles.headline3.copyWith(color: Colors.white),
                )
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
