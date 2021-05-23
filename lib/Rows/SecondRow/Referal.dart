import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class ReferalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Creator Referral Promo',
            style: TextStyle(
                color: Color(0xFF006192),
                fontSize: 16,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700),
          ),
          Text(
            'Refer Your Fans',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 28, color: Colors.white),
          ),
          Text(
            'and Earn Tokens',
            style: TextStyle(
                color: Color(0xffbcf0f7),
                fontSize: 20,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width <= 1120 || isTab(context)
                ? 400
                : 455,
            height: MediaQuery.of(context).size.width <= 425 ? 101 : 100,
            child: Card(
              color: Color(0xff99e4ef),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.info_outline,
                    size: 50,
                    color: Color(0xff01bcd6),
                  ),
                  SizedBox(width: 20),
                  MediaQuery.of(context).size.width <= 425
                      ? Text(
                          'Signups for the referral\nprogram are currently on\nhold until further notice.',
                          style: TextStyle(
                              color: Color(0xff066ca1),
                              fontSize: MediaQuery.of(context).size.width <= 320
                                  ? 11
                                  : 12,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w600),
                        )
                      : MediaQuery.of(context).size.width <= 1120 ||
                              isTab(context)
                          ? Text(
                              'Signups for the referral program are\ncurrently on hold until further notice.',
                              style: TextStyle(
                                  color: Color(0xff066ca1),
                                  fontSize: 14,
                                  fontFamily: 'Muli',
                                  fontWeight: FontWeight.w600),
                            )
                          : Text(
                              'Signups for the referral program are currently on\nhold until further notice.',
                              style: TextStyle(
                                  color: Color(0xff066ca1),
                                  fontSize: 14,
                                  fontFamily: 'Muli',
                                  fontWeight: FontWeight.w600),
                            ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
