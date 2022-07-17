import 'package:conquistandoomundo/pages/dashboard_classes/dashboard_classes_view.dart';
import 'package:conquistandoomundo/util/navigation.dart';
import 'package:conquistandoomundo/util/style.dart';
import 'package:flutter/material.dart';

Widget HomeItemBuilder(BuildContext context, List<String> ids, String image) {
  var width = MediaQuery.of(context).size.width;
  var limit = MediaQuery.of(context).size.height;
  return Material(
    child: InkWell(
      onTap: () {
        Navigation.to(context,
            MaterialPageRoute(builder: (context) => DashboardClasses(ids)));
      }, // Handle your callback.
      splashColor: AppColors().colorOnHold,
      child: Ink(
        height: width < limit ? 255 : 270,
        width: width < limit ? 180 : 195,
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
