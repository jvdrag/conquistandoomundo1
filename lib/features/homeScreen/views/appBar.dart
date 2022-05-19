import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return  Row(
      children: [
        SizedBox(width: screenWidth*.1,),
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage('/imageLogo.jpeg'),
        ),

        SizedBox(width: screenWidth*.1,),
        Text('INICIO', style: TextStyle(color: Colors.black),),
        SizedBox(width: screenWidth*.1,),

        Text('PLANOS', style: TextStyle(color: Colors.black),),
        SizedBox(width: screenWidth*.1,),

        Text('SOBRE', style: TextStyle(color: Colors.black),),
        SizedBox(width: screenWidth*.1,),

        Text('CONTATO', style: TextStyle(color: Colors.black),),
      ],
    );
  }
}
