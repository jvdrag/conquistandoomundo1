import 'package:conquistandoomundo/pages/dashboard_classes/views/header.dart';
import 'package:conquistandoomundo/pages/dashboard_classes/views/youtube_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardClasses extends StatefulWidget {
  List<String> ids = [];
  DashboardClasses(this.ids, {Key? key}) : super(key: key);

  @override
  State<DashboardClasses> createState() => _DashboardClassesState();
}

class _DashboardClassesState extends State<DashboardClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: MaterialApp(
        title: 'Conquistando o mundo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Color.fromARGB(255, 12, 23, 42),
        ),
        debugShowCheckedModeBanner: false,
        home: YoutubePlayer(widget.ids),
      ),
    );
  }
}
