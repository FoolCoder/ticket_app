import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_colum_text.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/customtext.dart';
import 'package:ticket_app/base/widgets/hotel.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      height: MediaQuery.sizeOf(context).height * 0.28,
      child: Container(
        margin: EdgeInsets.all(wholeScreen ? 0 : 10),
        child: Column(
          children: [
            //blue paert of ticket
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  //show departure and destination with icon
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        txt: ticket['from']['code'],
                        bigtxt: true,
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilder(randonDivider: 7),
                            ),
                            Transform.rotate(
                              angle: 1.5,
                              child: const Center(
                                child: Icon(
                                  Icons.local_airport_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      CustomText(
                        txt: ticket['to']['code'],
                        bigtxt: true,
                      ),
                    ],
                  ),
                  //show departure and destination name
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: CustomText(txt: ticket['from']['name'])),
                      Expanded(child: Container()),
                      CustomText(txt: ticket['flying_time']),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: CustomText(
                          txt: ticket['to']['name'],
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //ticket divider
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutbuilder(
                    randonDivider: 15,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            //orange part of ticket
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  //show departure and destination with icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumText(
                        txt1: ticket['date'],
                        txt2: 'Date',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumText(
                        txt1: ticket['departure_time'],
                        txt2: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumText(
                        txt1: ticket['number'].toString(),
                        txt2: 'Number',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
