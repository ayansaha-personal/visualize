import 'package:flutter/material.dart';

/// Calculates required width from percentage and returns value in double with the following parameters:
/// [context] BuildContext from the widget this method is called.
/// [percent] Percentage of width out of total screen size.
double calculateWidth(context, int percent) {
  double width = MediaQuery.of(context).size.width;
  return (percent / 100) * width;
}

/// Calculates required height from percentage and returns value in double with the following parameters:
/// [context] BuildContext from the widget this method is called.
/// [percent] Percentage of height out of total screen size.
double calculateHeight(context, int percent) {
  double height = MediaQuery.of(context).size.height;
  return (percent / 100) * height;
}