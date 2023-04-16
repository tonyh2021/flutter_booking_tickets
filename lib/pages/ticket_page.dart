import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_data.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/ticket_tab.dart';
import 'package:flutter_booking_tickets/widgets/ticket_view.dart';
import 'package:gap/gap.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppLayout.screenWidth();
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.width(20), vertical: AppLayout.height(20)),
            children: [
              Gap(AppLayout.height(40)),
              Text(
                "Ticket",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.height(20)),
              const TicketTab(tabs: ["Upcoming", "Previous"]),
              Gap(AppLayout.height(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppLayout.width(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Flutter DB",
                              style: Styles.headLineStyle3,
                            ),
                            Gap(AppLayout.height(5)),
                            Text(
                              "Passenger",
                              style: Styles.headLineStyle3,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
