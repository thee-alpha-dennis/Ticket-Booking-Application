import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

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
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(left: 2),
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Styles.primaryColor,
            image: const DecorationImage(
              image: AssetImage("assets/images/one.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Gap(5),
        Text(
          'Open Space',
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
