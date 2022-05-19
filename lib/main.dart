import 'package:conquistandoomundo/features/bemVindoScreen/viewBemVindo.dart';
import 'package:flutter/material.dart';

import 'features/homeScreen/viewHomeScreen.dart';
import 'features/pergunta1/viewPergunta1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ViewHomeScreen(),
    );
  }
}

//2560 x 1600