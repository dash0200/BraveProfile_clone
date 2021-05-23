import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextButton buildTextButton(String title) {
      return TextButton(
        child: Text(title,
            style: TextStyle(color: Color(0xff6269d7), fontSize: 13)),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                vertical: !isMobile(context) ? 13 : 10,
                horizontal: !isMobile(context) ? 35 : 18),
          ),
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

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/braveLogo.png',
              width: MediaQuery.of(context).size.width > 340 ? 300 : 250,
            ),
            if (MediaQuery.of(context).size.width < 747 &&
                MediaQuery.of(context).size.width > 390)
              IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: Icon(Icons.menu),
                highlightColor: Color(0xFFB2DBFA),
                iconSize: 20,
              ),
            if (!isMobile(context) && MediaQuery.of(context).size.width >= 747)
              Row(
                children: [
                  buildTextButton('+Add Channel'),
                  SizedBox(width: 15),
                  buildTextButton('Tapping Banner'),
                  SizedBox(width: 15),
                  CircleAvatar(
                    child: Icon(Icons.image_rounded),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
