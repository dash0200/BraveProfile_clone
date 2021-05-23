import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width <= 680;
bool isTab(BuildContext context) =>
    MediaQuery.of(context).size.width <= 1100 &&
    MediaQuery.of(context).size.width >= 650;
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1200;