import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF4F6FD)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: size.width * 0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: const Text(
              'Airline ticket',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: size.width * 0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent),
            child: const Text(
              'Hotels',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
