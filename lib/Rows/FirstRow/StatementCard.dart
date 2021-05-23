import 'package:flutter/material.dart';

class StatementCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Statements',
            style: TextStyle(
                fontFamily: 'Muli',
                color: Color(0xff2a2c35),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View Statements',
              style: TextStyle(
                  color: Color(0xff4c54d2), fontFamily: 'Muli', fontSize: 16),
            ),
          ),
          Text(
            'No statements available',
            style: TextStyle(
              fontFamily: 'Muli',
              color: Color(0xff2a2c35),
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
