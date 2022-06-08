import 'package:conquistandoomundo/features/LogInScreen/views/bodyLogInScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewLogInScreen extends StatelessWidget {
  const ViewLogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      body: BodyLogInScreen(),
    );
  }
}
