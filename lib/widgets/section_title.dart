import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const SectionTitle({Key? key, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.headLineStyle2),
        InkWell(
            onTap: () {
              if (kDebugMode) {
                print("Go to view all...");
              }
            },
            child: Text(subtitle, style: Styles.textStyle.copyWith(color: Styles.primaryColor))),
      ],
    );
  }
}
