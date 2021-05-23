import 'package:flutter/material.dart';
import 'package:responsive_web/Rows/SecondRow/Referal.dart';
import 'package:responsive_web/Rows/SecondRow/WalletService.dart';
import 'package:responsive_web/responsive.dart';

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: !isMobile(context) && MediaQuery.of(context).size.width >= 1000
          ? Axis.horizontal
          : Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width <= 1120 || isTab(context)
                ? 500
                : 560,
            height: 260,
            child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: WalletServiceCard())),
        Container(
            width: MediaQuery.of(context).size.width <= 1120 || isTab(context)
                ? 500
                : 560,
            height: 280,
            child: Card(
                color: Color(0xff00bcd6),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ReferalCard())),
      ],
    );
  }
}
