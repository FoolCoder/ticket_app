import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_double_txt.dart';
import 'package:ticket_app/base/widgets/hotel.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: AppStyles.headline3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Book Tickets',
                            style: AppStyles.headline1,
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image:
                              DecorationImage(image: AssetImage(AppMedia.logo)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    child: const Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_filled,
                          color: Color(0xFFBFC205),
                        ),
                        Text('  Search')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AppDoubleTxt(
              bigText: 'Upcoming flights',
              smallText: 'View all',
              func: () =>
                  Navigator.pushReplacementNamed(context, 'AllTickets')),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((tk) => TicketView(ticket: tk)).toList(),
            ),
          ),
          AppDoubleTxt(
              bigText: 'Hotels',
              smallText: 'View all',
              func: () => Navigator.pushReplacementNamed(context, 'AllHotels')),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((ht) => Hotel(hotel: ht)).toList(),
              ))
        ],
      ),
    );
  }
}
