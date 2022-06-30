import 'package:conquistandoomundo/features/dashboardAulas/views/aulasMainPage.dart';
import 'package:conquistandoomundo/features/dashBoard/views/dashBoardAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewAulas extends StatelessWidget {
  const ViewAulas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AulasMainPage(),
      backgroundColor: Color.fromARGB(255, 7, 20, 36),
    );
  }
}
