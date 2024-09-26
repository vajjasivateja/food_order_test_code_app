import 'package:flutter/material.dart';

Divider commonDivider({required double height, Color color = Colors.transparent, double thickness = 0}) {
  return Divider(height: height, color: color, thickness: thickness);
}

VerticalDivider commonVerticalDivider({required double width, Color color = Colors.transparent, double thickness = 0}) {
  return VerticalDivider(width: width, color: color, thickness: thickness);
}

bool isPortrait(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}
