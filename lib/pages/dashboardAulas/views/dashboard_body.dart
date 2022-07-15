import 'package:flutter/cupertino.dart';
import '../../dashBoard/views/dashBoardMainPage.dart';
import 'dashboard_classes_main_page.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: DashboardClassesMainPage())]);
  }
}
