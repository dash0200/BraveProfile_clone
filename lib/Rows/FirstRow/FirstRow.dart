import 'package:flutter/material.dart';
import 'package:responsive_web/Rows/FirstRow/BatBalance.dart';
import 'package:responsive_web/Rows/FirstRow/StatementCard.dart';
import 'package:responsive_web/responsive.dart';

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: !isMobile(context) && MediaQuery.of(context).size.width >= 1000
          ? Axis.horizontal
          : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width <= 1120 || isTab(context)
              ? 500
              : 560,
          height: 180,
          child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: BalanceCard()),
        ),
        Container(
          width: MediaQuery.of(context).size.width <= 1120 || isTab(context)
              ? 500
              : 560,
          height: 180,
          child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: StatementCard()),
        ),
      ],
    );
  }
}
