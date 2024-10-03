import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_ticket_tab.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Ticket',
            style: AppStyles.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(
            firstTab: 'Upcomng',
            secondTab: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          TicketView(
            ticket: ticketList[0],
            isColor: true,
          )
        ],
      ),
    );
  }
}
