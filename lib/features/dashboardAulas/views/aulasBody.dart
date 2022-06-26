import 'package:flutter/cupertino.dart';
import '../../dashBoard/views/dashBoardMainPage.dart';

class ChooseTOEFL_DET_ESSAYBody extends StatelessWidget {
  const ChooseTOEFL_DET_ESSAYBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         Expanded(child: DashBoardMainPage())
       ]
    );
  }
}
