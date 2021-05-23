import 'package:flutter/material.dart';

class WalletServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet Services',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Poppins'),
              ),
              Text(
                'Last Deposit:-',
                style: TextStyle(
                    fontFamily: 'Muli',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Last Deposit Date:-',
                style: TextStyle(
                    fontFamily: 'Muli',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 4,
                color: Colors.black,
              ),
              // Container(
              //   color: Colors.grey,
              //   width: 500,
              //   height: 1,
              // ),
              Text(
                'Uphold Wallet',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Poppins'),
              ),
              Row(
                children: [
                  Text(
                    'Connected',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 16,
                      color: Color(0xff5e6175),
                    ),
                  ),
                  Text(
                    '@',
                    style: TextStyle(color: Color(0xff19ba6a)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width >= 320
                            ? 25
                            : MediaQuery.of(context).size.width >= 420
                                ? 100
                                : MediaQuery.of(context).size.width >= 1119
                                    ? 150
                                    : 50),
                    child: Container(
                      height: 15,
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Disconnect',
                    style: TextStyle(
                      color: Color(0xff4c54d2),
                      fontFamily: 'Muli',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Deposite Currency:',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'BAT',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 16,
                      color: Color(0xff5e6175),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
