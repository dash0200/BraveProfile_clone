import 'package:flutter/material.dart';

class NavItems extends StatelessWidget {
  late final String title;

  NavItems(this.title);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      onPressed: () {},
    );
  }
}
