import 'package:flutter/material.dart';

Widget sizer_apna(BuildContext context) {
  return Column(
    children: [
      Container(
        height: MediaQuery.of(context).size.height -
            // why we minus 56 from height  because 58 size occupy by bottom bar
            58, //  ye mokammal height lay ga

        width: MediaQuery.of(context).size.width,
        color: Colors.purple,
      ),
    ],
  );
}
