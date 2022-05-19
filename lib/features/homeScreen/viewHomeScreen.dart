import 'package:conquistandoomundo/features/homeScreen/views/appBar.dart';
import 'package:conquistandoomundo/features/homeScreen/views/bodyHomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewHomeScreen extends StatelessWidget {
  const ViewHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar:
        AppBar(
          backgroundColor: Colors.blue[800],
          elevation: 0,

          actions: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('/imageLogo.jpeg'),
              ),

              SizedBox(width: screenWidth*.2,),
              Center(child: Text('INICIO', style: TextStyle(color: Colors.black),)),
              SizedBox(width: screenWidth*.1,),

              Center(child: Text('PLANOS', style: TextStyle(color: Colors.black),)),
              SizedBox(width: screenWidth*.1,),

              Center(child: Text('SOBRE', style: TextStyle(color: Colors.black),)),
              SizedBox(width: screenWidth*.1,),

              Center(child: Text('CONTATO', style: TextStyle(color: Colors.black),)),
            SizedBox(width: screenWidth*.2,),

          ],
        ),
      body: BodyHomeScreen(),
    );
  }
}
