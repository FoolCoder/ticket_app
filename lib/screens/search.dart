import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
          SizedBox(
            height: 20,
          ),
          AppTicketTab()
        ],
      ),
    );
  }
}
