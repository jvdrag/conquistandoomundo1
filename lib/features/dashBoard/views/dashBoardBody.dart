import 'package:flutter/cupertino.dart';

import 'dashBoardAppBar.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       children: [
         DashBoardAppBar()
        ]
      ),
    );
  }
}
