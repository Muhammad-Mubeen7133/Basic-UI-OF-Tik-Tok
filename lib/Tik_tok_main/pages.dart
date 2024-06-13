import 'package:flutter/material.dart';

class_pages(Color color_pages, {double? apna_height, double? apna_width}) {
  return Column(
    children: [
      Container(
        height: apna_height,
        width: apna_width,
        color: color_pages,
      ),
    ],
  );
}
