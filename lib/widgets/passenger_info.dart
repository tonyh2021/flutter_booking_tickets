import 'package:flutter/cupertino.dart';
import 'package:flutter_booking_tickets/utils/app_layout.dart';
import 'package:flutter_booking_tickets/utils/app_styles.dart';
import 'package:gap/gap.dart';

class PassengerInfo extends StatelessWidget {
  final String title;
  final String? value;
  final Widget? valueWidget;
  final bool alignmentRight;

  const PassengerInfo({Key? key, required this.title, this.value, this.valueWidget, this.alignmentRight = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignmentRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        _buildLeftWidget(),
        Gap(AppLayout.height(5)),
        Text(
          title,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }

  Widget _buildLeftWidget() {
    if (value != null) {
      return Text(
        value!,
        style: Styles.headLineStyle3,
      );
    }
    return valueWidget!;
  }
}
