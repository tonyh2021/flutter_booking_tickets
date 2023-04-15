import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLayout.screenWidth() * 0.85,
      height: AppLayout.height(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.width(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Blue part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: Styles.blueColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.height(21)), topRight: Radius.circular(AppLayout.height(21)))),
              padding: EdgeInsets.all(AppLayout.height(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(
                        child: Container(),
                      ),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.height(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6).floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(color: Colors.white),
                                              ),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.width(100),
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.width(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Orange middle part of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.height(20),
                    width: AppLayout.width(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.height(10)),
                              bottomRight: Radius.circular(AppLayout.height(10)))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.height(12)),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(color: Colors.white),
                                  ),
                                )),
                      );
                    }),
                  )),
                  SizedBox(
                    height: AppLayout.height(20),
                    width: AppLayout.width(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.height(10)),
                              bottomLeft: Radius.circular(AppLayout.height(10)))),
                    ),
                  ),
                ],
              ),
            ),
            // Orange bottom part
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.height(21)),
                      bottomRight: Radius.circular(AppLayout.height(21)))),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          Gap(AppLayout.height(5)),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          Gap(AppLayout.height(5)),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket['number']}",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          Gap(AppLayout.height(5)),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
