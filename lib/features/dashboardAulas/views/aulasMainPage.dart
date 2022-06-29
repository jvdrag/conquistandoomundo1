import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AulasMainPage extends StatelessWidget {
  const AulasMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 1920,
            height: 540,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('/Desktop1.png'), fit: BoxFit.fitWidth),
            )),
      ],
    );
  }
}
