import 'package:flutter/cupertino.dart';

Widget buildSpacer({double width = 0, double height = 0}) {
  return Builder(
      builder: (context) => SizedBox(
            width: width,
            height: height,
          ));
}
