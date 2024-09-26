import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20),
      width: size.width * 0.6,
      height: 320,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(AppMedia.hotel_room)),
              // "assests/images/${hotel['image']}" refactor load image error
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              '${hotel['place']}',
              style: AppStyles.headline3.copyWith(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 2),
            child: Text(
              hotel['destination'],
              style: AppStyles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 2),
            child: Text(
              '\$${hotel['price']}',
              style: AppStyles.headline3.copyWith(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
