import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_data.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/hotel_view.dart';
import 'package:flutter_booking_tickets/widgets/section_title.dart';
import 'package:flutter_booking_tickets/widgets/ticket_view.dart';
import 'package:gap/gap.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(AppLayout.height(20)),
            child: Column(
              children: [
                Gap(AppLayout.height(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle1)
                      ],
                    ),
                    Container(
                      width: AppLayout.width(50),
                      height: AppLayout.height(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.height(10)),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight, image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),
                Gap(AppLayout.height(25)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.height(10)), color: const Color(0xFFf4f6fd)),
                  padding: EdgeInsets.all(AppLayout.height(12)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFbfc205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.height(40)),
                const SectionTitle(title: "Upcoming Flights", subtitle: "View all"),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.width(20)),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(
                        shouldColor: true,
                        ticket: ticket,
                      ))
                  .toList(),
            ),
          ),
          Gap(AppLayout.height(40)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.width(20)),
            child: const SectionTitle(title: "Hotels", subtitle: "View all"),
          ),
          Gap(AppLayout.height(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.width(20)),
            child: Row(
              children: hostList
                  .map((hotel) => HotelView(
                        hotel: hotel,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
