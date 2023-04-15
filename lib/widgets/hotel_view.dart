import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppLayout.screenWidth() * 0.6,
      height: AppLayout.height(350),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.width(15), vertical: AppLayout.height(17)),
      margin: EdgeInsets.only(right: AppLayout.width(17), top: AppLayout.height(5)),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.height(24)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: AppLayout.height(20),
              spreadRadius: AppLayout.height(5),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.height(12)),
                color: Styles.primaryColor,
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/${hotel["image"]}"))),
          ),
          Gap(AppLayout.height(10)),
          Text(
            hotel["place"],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.height(5)),
          Text(
            hotel["destination"],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.height(8)),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
