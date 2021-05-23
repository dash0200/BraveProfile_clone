import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AddChannelBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
        ),
        width: MediaQuery.of(context).size.width * 0.598,
        height: MediaQuery.of(context).size.height * 0.092,
        child: DottedBorder(
          color: Color(0xFF9399C8),
          strokeWidth: 1,
          dashPattern: [8, 4],
          borderType: BorderType.RRect,
          radius: Radius.circular(12),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.138,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width < 800
                        ? 200
                        : MediaQuery.of(context).size.width * 0.593,
                    height: MediaQuery.of(context).size.width < 800
                        ? 200
                        : MediaQuery.of(context).size.height * 0.138,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFF3F1F1))),
                      onPressed: () {},
                      child: Text(
                        '+ Add Channel',
                        style: TextStyle(
                            color: Color(0xff4c54d2),
                            fontFamily: 'Muli',
                            fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
