import 'package:conquistandoomundo/features/cadastro/fireBaseAuthCadastroScreen.dart';
import 'package:conquistandoomundo/features/cadastro/viewCadastroScreen.dart';
import 'package:conquistandoomundo/features/dashboardAulas/viewAulas.dart';
import 'package:conquistandoomundo/features/dashboardAulas/views/VideosAulas.dart';
import 'package:conquistandoomundo/features/dashboardAulas/views/aulasMainPage.dart';
import 'package:conquistandoomundo/features/dashboardAulas/views/videosAulas.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/LogInScreen/viewLogInScreen.dart';
import 'features/LogInScreen/views/bodyLogInScreen.dart';
import 'features/dashBoard/viewDashBoard.dart';
import 'features/dashboardAulas/viewVideosAulas.dart';
import 'firebase_options.dart';
import 'package:conquistandoomundo/features/dashboardAulas/viewVideosAulas.dart';

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
