import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelScreen({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(21),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, blurRadius: 2, spreadRadius: 1),
          ]),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: size.width * 0.6,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(left: 2),
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Styles.primaryColor,
            image: DecorationImage(
              image: AssetImage("assets/images/${hotels['image']}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Gap(5),
        Text(
          "${hotels['place']}",
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        Gap(5),
        Text(
          "${hotels['destination']}",
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Gap(5),
        Text(
          "\$${hotels['price']}/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
