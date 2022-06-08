import 'package:conquistandoomundo/features/bemVindoScreen/viewBemVindo.dart';
import 'package:conquistandoomundo/features/cadastro/fireBaseAuthCadastroScreen.dart';
import 'package:conquistandoomundo/features/cadastro/viewCadastroScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/LogInScreen/viewLogInScreen.dart';
import 'features/pergunta1/viewPergunta1.dart';

void main() async {
/* WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();*/
  runApp(MyApp());
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

      home: BemVindoScreen(),

      /*StreamBuilder(
          stream: AuthServiceCadasto().firebaseAuth.authStateChanges(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ViewCadastroScreen();
            }
            return ViewCadastroScreen();
          }),*/
    );
  }
}

