import 'package:conquistandoomundo/pages/dashboardAulas/views/header.dart';
import 'package:conquistandoomundo/pages/dashboardAulas/views/youtube_player.dart';

import 'package:flutter/material.dart';

Widget ClasroomBuilder(List<String> ids) {
  return Builder(
    builder: (context) => Scaffold(
      appBar: Header(),
      body: MaterialApp(
        title: 'Conquistando o mundo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
        ),
        debugShowCheckedModeBanner: false,
        home: YoutubePlayer(ids),
      ),
    ),
  );
}
