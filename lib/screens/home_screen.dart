import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/hotel_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_styles.dart';

import '../utils/info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const Gap(40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              //column one
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: Styles.headLineStyle3),
                        Gap(5),
                        Text(
                          'Book  Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img_1.png"))),
                    ),
                  ],
                ), //
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0XFFBFC205)),
                      const Gap(25),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Shows',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print('Tapped');
                      },
                      child: Text(
                        'View All',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
            //column one
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              TicketView(),
              TicketView(),
            ]),
          ),
          Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLineStyle2,
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    print('Tapped');
                  },
                  child: Text(
                    'View All',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList
                    .map((singlehotel) => HotelScreen(hotels: singlehotel))
                    .toList(),
              )),
        ],
      ),
    );
  }
}
