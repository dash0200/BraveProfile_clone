import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class BottomChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width <= 1120 || isTab(context)
          ? 1000
          : 1120,
      height: MediaQuery.of(context).size.width <= 1120 || isTab(context)
          ? 220
          : 180,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/github.png',
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.0052),
                  Text(
                    'GITHUB',
                    style: TextStyle(
                        color: Color(0xff2a2c35),
                        fontFamily: 'Muli',
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'user002',
                    style: TextStyle(
                        color: Color(0xff2a2c35),
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            '0.00',
                            style: TextStyle(
                                color: Color(0xff2a2c35),
                                fontFamily: 'Poppins',
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'BAT',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2a2c35),
                              fontFamily: 'Muli',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'CURRENT PERIOD',
                            style: TextStyle(
                              fontSize: 12.8,
                              color: Color(0xff2a2c35),
                              fontFamily: 'Muli',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Flex(
                direction: isMobile(context) &&
                        MediaQuery.of(context).size.width <= 1000
                    ? Axis.vertical
                    : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'added 2021-04-30',
                        style: TextStyle(
                            color: Color(0xff2a2c35),
                            fontFamily: 'Muli',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.0078),
                      if (!isMobile(context))
                        Container(
                          width: 1,
                          height: 15,
                          color: Colors.grey,
                        ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change',
                          style: TextStyle(
                            color: Color(0xff4c54d2),
                            fontFamily: 'Muli',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  if (!isMobile(context))
                    Container(
                      width: 1,
                      height: 15,
                      color: Colors.grey,
                    ),
                  SizedBox(width: 15),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Remove Channel',
                      style: TextStyle(
                        color: Color(0xff4c54d2),
                        fontFamily: 'Muli',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
