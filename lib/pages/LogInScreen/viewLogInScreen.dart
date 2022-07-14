import 'package:conquistandoomundo/pages/LogInScreen/views/bodyLogInScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewLogInScreen extends StatelessWidget {
  const ViewLogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return const Scaffold(
      body: BodyLogInScreen(),
      backgroundColor: Color.fromARGB(255, 38, 34, 34),
    );
  }
}
