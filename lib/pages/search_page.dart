import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/icon_text_widget.dart';
import 'package:flutter_booking_tickets/widgets/section_title.dart';
import 'package:flutter_booking_tickets/widgets/ticket_tab.dart';
import 'package:gap/gap.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final width = AppLayout.screenWidth();
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.width(20), vertical: AppLayout.height(20)),
        children: [
          Gap(AppLayout.height(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.width(35)),
          ),
          Gap(AppLayout.height(20)),
          const TicketTab(tabs: ["Airline tickets", "Hotels"]),
          Gap(AppLayout.height(25)),
          const IconText(icon: Icons.flight_takeoff_rounded, title: "Departure"),
          Gap(AppLayout.height(15)),
          const IconText(icon: Icons.flight_land_rounded, title: "Arrival"),
          Gap(AppLayout.height(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.height(15), horizontal: AppLayout.width(15)),
            decoration: BoxDecoration(
              color: const Color(0xd91130cf),
              borderRadius: BorderRadius.circular(AppLayout.height(10)),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.height(25)),
          const SectionTitle(title: "Upcoming Flights", subtitle: "View all"),
          Gap(AppLayout.height(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.height(400),
                width: width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15), vertical: AppLayout.height(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.height(20)),
                    boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)]),
                child: Column(
                  children: [
                    Container(
                        height: AppLayout.height(190),
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage("assets/images/sit.jpg"), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(AppLayout.height(12)),
                        )),
                    Gap(AppLayout.height(12)),
                    Text("20% discount on the early booking of this flight. Don't miss.", style: Styles.headLineStyle2)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: width * 0.44,
                        height: AppLayout.height(190),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3ab8b8),
                            borderRadius: BorderRadius.circular(AppLayout.height(18)),
                            boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)]),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.height(15), horizontal: AppLayout.width(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            Gap(AppLayout.height(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2
                                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                            padding: EdgeInsets.all(AppLayout.height(30)),
                          )),
                    ],
                  ),
                  Gap(AppLayout.height(15)),
                  Container(
                    width: width * 0.44,
                    height: AppLayout.height(185),
                    decoration: BoxDecoration(
                        color: const Color(0xFFec6545),
                        borderRadius: BorderRadius.circular(AppLayout.height(18)),
                        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)]),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.height(15), horizontal: AppLayout.width(15)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                        Gap(AppLayout.height(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: "😍", style: TextStyle(fontSize: 38)),
                          TextSpan(text: "🥰", style: TextStyle(fontSize: 50)),
                          TextSpan(text: "😘", style: TextStyle(fontSize: 38))
                        ]))
                      ],
                    ),
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
