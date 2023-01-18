import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/icon_text_widget.dart';
import 'package:ticket_booking/widgets/view_all.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 020),
        children: [
          Gap(40),
          Text('What are \n you looking for?',
              style: Styles.headLineStyle1.copyWith(fontSize: 35)),
          Gap(20),
          Container(
            padding: const EdgeInsets.all(3.5),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  width: size.width * 0.44,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('Airline Tickets')),
                ),
                //2
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  width: size.width * 0.44,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(50)),
                    color: Colors.transparent,
                  ),
                  child: Center(child: Text('Hotels')),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xfff4f6fd),
            ),
          ),
          Gap(30),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(15),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(20),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 120),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xd91130ce)),
              child: Center(
                child: Text(
                  'Find Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(24),
          ViewAll(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
          ),
          Gap(15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade100,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                height: 400,
                width: size.width * 0.42,
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/sit.jpg",
                              ))),
                    ),
                    Gap(15),
                    Text(
                      '20% discount on the early booking of this flight. Don\'t miss out on this chance!',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: size.width * 0.44,
                        height: 174,
                        decoration: BoxDecoration(
                          color: Color(0xFF3ABBBB),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(10),
                            Text(
                              'Take Survey about our services and get discount!!',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xff189999))),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: size.width * 0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(children: [
                      Text(
                        "Take Love",
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '❤', style: TextStyle(fontSize: 38)),
                        TextSpan(text: '😍', style: TextStyle(fontSize: 50)),
                        TextSpan(text: '❤', style: TextStyle(fontSize: 38)),
                      ]))
                    ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
