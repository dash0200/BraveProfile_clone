import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  var fSize;
  final Color c;
  final String family;
  final String title;
  final FontWeight fWeight;

  TextStyles(
      {required this.c,
      required this.fWeight,
      required this.fSize,
      required this.family,
      required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: c,
        fontFamily: family,
        fontWeight: fWeight,
        fontSize: fSize,
      ),
    );
  }
}
