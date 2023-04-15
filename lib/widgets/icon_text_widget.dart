import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:gap/gap.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconText({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.height(12), horizontal: AppLayout.width(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.height(5)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFbfc2df),
          ),
          Gap(AppLayout.width(10)),
          Text(
            title,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
