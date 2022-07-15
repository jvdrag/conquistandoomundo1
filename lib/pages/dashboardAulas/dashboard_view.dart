import 'package:conquistandoomundo/pages/dashboardAulas/views/dashboard_body.dart';
import 'package:conquistandoomundo/pages/dashboardAulas/views/dashboard_classes_main_page.dart';
import 'package:conquistandoomundo/pages/dashboardAulas/views/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: DashboardBody(),
      backgroundColor: Color.fromARGB(255, 7, 20, 36),
    );
  }
}
