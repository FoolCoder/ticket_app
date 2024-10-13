import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_app/base/bottom_nav_bar_.dart';
import 'package:ticket_app/base/provider/product_provider.dart';
import 'package:ticket_app/screens/all_hotels.dart';
import 'package:ticket_app/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const BottomNavBar(),
            'AllTickets': (context) => const AllTickets(),
            'AllHotels': (context) => const AllHotels(),
          },
        ));
  }
}
