import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class DrawerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextButton buildTextButton(String title) {
      return TextButton(
        child: Text(title,
            style: TextStyle(color: Color(0xff6269d7), fontSize: 13)),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Color(0xff6269d7)),
            ),
          ),
        ),
        onPressed: () {},
      );
    }

    return Column(
      children: [
        Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: 150,
        ),
        SizedBox(width: 20),
        buildTextButton('+Add Channel'),
        SizedBox(width: 20),
        buildTextButton('Tapping Banner'),
        SizedBox(width: 20),
      ],
    );
  }
}
