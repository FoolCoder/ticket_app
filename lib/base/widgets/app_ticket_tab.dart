// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_txt_icon.dart';

class AppTicketTab extends StatelessWidget {
  final firstTab;
  final secondTab;
  const AppTicketTab(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    bool selectedTab = false;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          AppTabs(
            tabText: firstTab,
            selectedTab: selectedTab,
            onTapped: () {
              selectedTab = true;
              print(
                'selectedTab ${selectedTab}',
              );
            },
          ),
          AppTabs(
            tabText: secondTab,
            selectedTab: !selectedTab,
            onTapped: () {
              selectedTab = false;
              print(
                'selectedTab ${selectedTab}',
              );
            },
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = '',
      this.selectedTab = false,
      required this.onTapped});
  final String tabText;
  final bool selectedTab;
  final VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        onTapped();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        width: size.width * 0.44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(selectedTab == false ? 50 : 0),
            color: selectedTab == false ? Colors.white : Colors.transparent),
        child: Text(
          tabText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
