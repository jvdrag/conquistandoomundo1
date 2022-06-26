import 'package:flutter/cupertino.dart';

import '../../dashboardAulas/viewAulas.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         Expanded(child: ViewAulas()),
       ]

    );
  }
}
