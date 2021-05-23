import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/bat.png",
                width: 60,
                height: 60,
              ),
            ],
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BALANCE',
                style: TextStyle(
                    fontSize: !isMobile(context) ? 14 : 12,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0.00',
                    style: TextStyle(
                        fontSize: !isMobile(context) ? 48 : 36,
                        fontFamily: 'Muli',
                        color: Color(0xff2a2c35)),
                  ),
                  Text(
                    'BAT',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a2c35),
                        fontFamily: 'Muli'),
                  ),
                ],
              ),
              !isMobile(context)
                  ? Text(
                      "Next Deposite Date: June 8th",
                      style: TextStyle(fontSize: 13),
                    )
                  : Text(
                      "Next Deposite Date:\nJune 8th",
                      style: TextStyle(fontSize: 13),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
