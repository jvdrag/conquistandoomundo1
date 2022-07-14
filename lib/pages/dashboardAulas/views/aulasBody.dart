import 'package:flutter/cupertino.dart';
import '../../dashBoard/views/dashBoardMainPage.dart';
import 'aulasMainPage.dart';

class AulasBody extends StatelessWidget {
  const AulasBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         Expanded(child: AulasMainPage())
       ]
    );
  }
}
