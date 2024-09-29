import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_txt.dart';
import 'package:ticket_app/base/widgets/app_ticket_tab.dart';
import 'package:ticket_app/base/widgets/app_txt_icon.dart';
import 'package:ticket_app/base/widgets/button.dart';
import 'package:ticket_app/base/widgets/text_block.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'What are \n you lookin for?',
            style: AppStyles.headline1.copyWith(
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(),
          const SizedBox(
            height: 20,
          ),
          const AppTxtIcon(
            iconName: Icons.flight_takeoff_rounded,
            iconTxt: '   Departure',
            iconColor: Color(0xFFBFC2DF),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTxtIcon(
            iconName: Icons.flight_land_rounded,
            iconTxt: '   Arrival',
            iconColor: Color(0xFFBFC2DF),
          ),
          const SizedBox(
            height: 20,
          ),
          Button(btnTxt: 'Search', onPressed: () => {}),
          const SizedBox(
            height: 20,
          ),
          AppDoubleTxt(
              bigText: 'Upcoming Flightd',
              smallText: 'View all',
              func: () => {}),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              TextBlock(
                boxHeight: 420,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  TextBlock(
                    boxHeight: 200,
                    flag: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextBlock(
                    boxHeight: 200,
                    flag: false,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
