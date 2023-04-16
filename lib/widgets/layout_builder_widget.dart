import 'package:flutter/material.dart';

class LayoutBuildWidget extends StatelessWidget {
  final Color color;
  final int sections;
  final double dashLenth;

  const LayoutBuildWidget({Key? key, this.color = Colors.white, required this.sections, required this.dashLenth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
                  width: dashLenth,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ),
                )),
      );
    });
  }
}
