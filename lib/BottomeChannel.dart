import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class BottomChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.598,
        height: MediaQuery.of(context).size.width <= 780
            ? MediaQuery.of(context).size.height * 0.35
            : MediaQuery.of(context).size.height * 0.2,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: MediaQuery.of(context).size.width <= 780
                ? MobileChannel()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/github.png',
                            width: MediaQuery.of(context).size.width * 0.0083,
                            height: MediaQuery.of(context).size.height * 0.018,
                          ),
                          SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 0.0052),
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
                              width:
                                  MediaQuery.of(context).size.width * 0.0078),
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
                          SizedBox(width: 15),
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
      ),
    );
  }
}

class MobileChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/github.png',
              width: MediaQuery.of(context).size.width * 0.0083,
              height: MediaQuery.of(context).size.height * 0.018,
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
        Text(
          'user002',
          style: TextStyle(
              color: Color(0xff2a2c35), fontFamily: 'Poppins', fontSize: 20),
        ),
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
        Text(
          'CURRENT PERIOD',
          style: TextStyle(
            fontSize: 12.8,
            color: Color(0xff2a2c35),
            fontFamily: 'Muli',
          ),
        ),
        Text(
          'added 2021-04-30',
          style: TextStyle(
              color: Color(0xff2a2c35),
              fontFamily: 'Muli',
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
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
    );
  }
}
