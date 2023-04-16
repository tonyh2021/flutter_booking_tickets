import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/layout_builder_widget.dart';
import 'package:flutter_booking_tickets/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool shouldColor;
  final bool rightMargin;

  const TicketView({Key? key, required this.ticket, this.shouldColor = false, this.rightMargin = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleColor = shouldColor ? Colors.white : Styles.textColor;
    final subtitleColor = shouldColor ? Colors.white : Colors.grey.shade500;
    final iconColor = shouldColor ? Colors.white : const Color(0xFF8accf7);
    return SizedBox(
      width: AppLayout.screenWidth() * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: rightMargin ? AppLayout.width(16) : 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Blue part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: shouldColor ? Styles.blueColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.height(21)), topRight: Radius.circular(AppLayout.height(21)))),
              padding: EdgeInsets.all(AppLayout.height(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: titleColor)),
                      Expanded(
                        child: Container(),
                      ),
                      ThickContainer(shouldColor: shouldColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.height(24),
                              child: LayoutBuildWidget(sections: 6, color: iconColor, dashLenth: 3),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: iconColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(shouldColor: shouldColor),
                      Expanded(
                        child: Container(),
                      ),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: titleColor)),
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
                          style: Styles.headLineStyle4.copyWith(color: subtitleColor),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: shouldColor
                            ? Styles.headLineStyle4.copyWith(color: titleColor)
                            : Styles.headLineStyle3.copyWith(color: titleColor, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: AppLayout.width(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(color: subtitleColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Orange middle part of the ticket
            Container(
              color: shouldColor ? Styles.orangeColor : Colors.white,
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
                    padding: EdgeInsets.all(AppLayout.height(shouldColor ? 12 : 6)),
                    child: LayoutBuildWidget(
                        sections: 15, color: shouldColor ? Colors.white : Colors.grey.shade300, dashLenth: 6),
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
                  color: shouldColor ? Styles.orangeColor : Colors.white,
                  borderRadius: shouldColor
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.height(21)),
                          bottomRight: Radius.circular(AppLayout.height(21)))
                      : BorderRadius.zero),
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
                            style: Styles.headLineStyle3.copyWith(color: titleColor),
                          ),
                          Gap(AppLayout.height(5)),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(color: subtitleColor),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(color: titleColor),
                          ),
                          Gap(AppLayout.height(5)),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(color: subtitleColor),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket['number']}",
                            style: Styles.headLineStyle3.copyWith(color: titleColor),
                          ),
                          Gap(AppLayout.height(5)),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(color: subtitleColor),
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
