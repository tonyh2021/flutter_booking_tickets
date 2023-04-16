import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:flutter_booking_tickets/widgets/passenger_info.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.width(20), vertical: AppLayout.height(20)),
        children: [
          Gap(AppLayout.height(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.height(86),
                width: AppLayout.width(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.height(10)),
                    image: const DecorationImage(image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(AppLayout.width(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.height(2)),
                  Text(
                    "New-York",
                    style: Styles.headLineStyle4,
                  ),
                  Gap(AppLayout.height(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.width(3), vertical: AppLayout.height(3)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.height(100)), color: const Color(0xFFfef4f3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Styles.blueColor),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.width(5)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(color: Styles.blueColor, fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.width(5)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print("tapped...");
                      }
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.height(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.height(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.height(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor, borderRadius: BorderRadius.circular(AppLayout.height(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.height(30)),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: const Color(0xFF264cd2))),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.width(25), vertical: AppLayout.height(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.width(12)),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You'v got a new award",
                            style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),
                          )
                        ])
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.height(25)),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.height(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.height(18)),
                color: Styles.bgColor,
                boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1)]),
            child: Column(
              children: [
                Gap(AppLayout.height(15)),
                Text(
                  "8964",
                  style: Styles.headLineStyle2.copyWith(fontSize: 45, fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.height(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 18),
                    ),
                    Text(
                      "23 March 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 18),
                    )
                  ],
                ),
                Gap(AppLayout.height(5)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.height(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PassengerInfo(
                      title: "Miles",
                      value: "1 989",
                    ),
                    PassengerInfo(
                      title: "Received from",
                      value: "Air Canada",
                      alignmentRight: true,
                    )
                  ],
                ),
                Gap(AppLayout.height(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PassengerInfo(
                      title: "Miles",
                      value: "64",
                    ),
                    PassengerInfo(
                      title: "Received from",
                      value: "Cathay Pacific",
                      alignmentRight: true,
                    )
                  ],
                ),
                Gap(AppLayout.height(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PassengerInfo(
                      title: "Miles",
                      value: "404",
                    ),
                    PassengerInfo(
                      title: "Received from",
                      value: "Delta Airlines",
                      alignmentRight: true,
                    )
                  ],
                )
              ],
            ),
          ),
          Gap(AppLayout.height(25)),
          InkWell(
            onTap: () {
              if (kDebugMode) {
                print("Tapped...");
              }
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(color: Styles.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
