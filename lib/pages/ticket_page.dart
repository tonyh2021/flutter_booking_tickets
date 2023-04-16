import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_data.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/layout_builder_widget.dart';
import 'package:flutter_booking_tickets/widgets/passenger_info.dart';
import 'package:flutter_booking_tickets/widgets/ticket_tab.dart';
import 'package:flutter_booking_tickets/widgets/ticket_view.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
              const SizedBox(height: 1.5),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppLayout.width(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15), vertical: AppLayout.height(20)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        PassengerInfo(title: "Passenger", value: "Tony"),
                        PassengerInfo(
                          title: "Passport",
                          value: "2345 53465235",
                          alignmentRight: true,
                        )
                      ],
                    ),
                    Gap(AppLayout.height(20)),
                    LayoutBuildWidget(sections: 15, color: Colors.grey.shade300, dashLenth: 6),
                    Gap(AppLayout.height(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        PassengerInfo(title: "Number of E-ticket", value: "0533 119 87191"),
                        PassengerInfo(
                          title: "Booking code",
                          value: "NFSC64",
                          alignmentRight: true,
                        )
                      ],
                    ),
                    Gap(AppLayout.height(20)),
                    LayoutBuildWidget(sections: 15, color: Colors.grey.shade300, dashLenth: 6),
                    Gap(AppLayout.height(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PassengerInfo(
                            title: "Payment method",
                            valueWidget: Row(children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 11,
                              ),
                              Text(
                                " *** 5973",
                                style: Styles.textStyle,
                              )
                            ])),
                        const PassengerInfo(
                          title: "Price",
                          value: "\$599.99",
                          alignmentRight: true,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.height(21)),
                      bottomLeft: Radius.circular(AppLayout.height(21)),
                    )),
                margin: EdgeInsets.only(left: AppLayout.width(15), right: AppLayout.width(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15), vertical: AppLayout.height(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.height(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/tonyh2021',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                    errorBuilder: (context, error) => Center(child: Text(error)),
                  ),
                ),
              ),
              Gap(AppLayout.height(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15)),
                child: TicketView(
                  shouldColor: true,
                  ticket: ticketList[0],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
