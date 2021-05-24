import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:responsive_web/responsive.dart';

class AddChannelBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: isTab(context)
              ? 200
              : isMobile(context)
                  ? 10
                  : 400),
      child: DottedBorder(
        color: Color(0xFF9399C8),
        strokeWidth: 1,
        dashPattern: [8, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Container(
            height: 70,
            child: SizedBox.expand(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Add Channel',
                  style: TextStyle(
                      color: Color(0xff4c54d2),
                      fontFamily: 'Muli',
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
