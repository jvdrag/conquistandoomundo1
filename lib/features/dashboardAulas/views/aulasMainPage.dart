import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AulasMainPage extends StatelessWidget {
  const AulasMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            color:  Colors.blueAccent,
            image: DecorationImage(
                image: AssetImage("/backgroundImage.jpeg"),

                //Trocar Imagem
                fit: BoxFit.cover),
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color:  Colors.blueAccent,
                  image: DecorationImage(
                      image: AssetImage("/backgroundImage.jpeg"),

                      //Trocar Imagem
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
