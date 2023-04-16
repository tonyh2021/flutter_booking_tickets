import 'package:flutter/material.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';

class TicketTab extends StatelessWidget {
  final List<String> tabs;
  const TicketTab({Key? key, required this.tabs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppLayout.screenWidth();
    return FittedBox(
        child: Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        color: const Color(0xFFf4f6fd),
        borderRadius: BorderRadius.circular(AppLayout.height(50)),
      ),
      child: Row(
        children: [
          // Airline tickets
          Container(
            width: width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.height(7)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.height(50))),
            ),
            child: Center(
              child: Text(tabs.first),
            ),
          ),
          // Hotels
          Container(
            width: width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.height(7)),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.height(50))),
            ),
            child: Center(
              child: Text(tabs[1]),
            ),
          ),
        ],
      ),
    ));
  }
}
