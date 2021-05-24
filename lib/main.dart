import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_web/BottomeChannel.dart';
import 'package:responsive_web/Rows/BottomAddChannel.dart';
import 'package:responsive_web/Rows/FirstRow/FirstRow.dart';
import 'package:responsive_web/NavigationBar/DrawerItems.dart';
import 'package:responsive_web/NavigationBar/NavBar.dart';
import 'package:responsive_web/Rows/SecondRow/SecondRow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffeceff1),
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerItems(),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                NavigationBar(),
                SizedBox(height: 20),
                FirstRow(),
                SizedBox(height: 20),
                SecondRow(),
                SizedBox(height: 20),
                BottomChannel(),
                SizedBox(height: 20),
                AddChannelBottom(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Terms of Service ',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 16,
                          color: Color(0xff4c54d2),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
