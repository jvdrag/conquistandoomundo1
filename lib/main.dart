import 'package:conquistandoomundo/pages/LogInScreen/viewLogInScreen.dart';
import 'package:conquistandoomundo/pages/cadastro/fireBaseAuthCadastroScreen.dart';
import 'package:conquistandoomundo/pages/dashBoard/viewDashBoard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Conquistando o mundo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StreamBuilder(
            stream: AuthServiceCadasto().firebaseAuth.authStateChanges(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ViewDashBoard();
              }
              return ViewLogInScreen();
            }));
  }
}
