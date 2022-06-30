import 'package:conquistandoomundo/features/cadastro/views/bodyCadastroScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewCadastroScreen extends StatelessWidget {
  const ViewCadastroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BodyCadastroScreen(),
      backgroundColor: Color.fromARGB(255, 38, 34, 34),
    );
  }
}
