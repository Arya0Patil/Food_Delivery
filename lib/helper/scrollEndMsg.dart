import 'package:flutter/material.dart';

Widget scrollEndMsg(BuildContext context, String line1, String line2) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Column(
      children: [
        Divider(
          height: 20,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              line1,
              style: TextStyle(fontStyle: FontStyle.italic),
            )),
        Align(
            alignment: Alignment.center,
            child: Text(
              line2,
              style: TextStyle(fontStyle: FontStyle.italic),
            )),
      ],
    ),
  );
}
