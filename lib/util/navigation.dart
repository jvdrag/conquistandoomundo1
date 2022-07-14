import 'package:flutter/material.dart';

class Navigation {
  static void to(BuildContext context, MaterialPageRoute route) {
    Navigator.of(context).push(route);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
