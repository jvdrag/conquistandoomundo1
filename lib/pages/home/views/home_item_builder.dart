import 'package:conquistandoomundo/pages/dashboard_classes/dashboard_classes_view.dart';
import 'package:conquistandoomundo/util/navigation.dart';
import 'package:conquistandoomundo/util/style.dart';
import 'package:flutter/material.dart';

Widget HomeItemBuilder(BuildContext context, List<String> ids, String image) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  final double telaTocaDeLayout = 1150.0;
  return Material(
    child: InkWell(
      onTap: () {
        Navigation.to(context,
            MaterialPageRoute(builder: (context) => DashboardClasses(ids)));
      }, // Handle your callback.
      splashColor: AppColors().colorOnHold,
      child: Ink(
        height: height < telaTocaDeLayout ? 300 : 315,
        width: width < telaTocaDeLayout ? 210 : 225,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}
