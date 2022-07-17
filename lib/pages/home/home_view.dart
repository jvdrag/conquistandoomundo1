import 'package:conquistandoomundo/pages/dashboard_classes/views/header.dart';
import 'package:conquistandoomundo/pages/home/views/home_item_builder.dart';
import 'package:conquistandoomundo/util/playlists_videos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  const Home({Key? key}) : super(key: key);

  State<Home> createState() => building();
}

class building extends State<Home> {
  int widgetId = 1;
  Widget Modulo1(BuildContext context) {
    return Container(
      child: Row(
        children: [
          HomeItemBuilder(context, ApplicationIDs, 'assets/Mdulo21.png'),
          SizedBox(
            width: 90,
          ),
          HomeItemBuilder(context, MathIDs, 'assets/Mdulo31.png'),
          SizedBox(
            width: 90,
          ),
          HomeItemBuilder(context, EnglishIDs, 'assets/Mdulo41.png'),
          SizedBox(
            width: 90,
          ),
          HomeItemBuilder(context, EssaysIDs, 'assets/Mdulo52.png'),
        ],
      ),
    );
  }

  Widget Modulo2(BuildContext context) {
    return Container(
      child: Row(
        children: [
          HomeItemBuilder(context, TOEFLIDs, 'assets/Mdulo62.png'),
          SizedBox(
            width: 90,
          ),
          HomeItemBuilder(context, DETIDs, 'assets/123.png'),
          SizedBox(
            width: 90,
          ),
          HomeItemBuilder(context, InterviewIDs, 'assets/321.png'),
          SizedBox(
            width: 90,
          ),
          HomeItemBuilder(context, UniversitiesIDs, 'assets/ult.png'),
        ],
      ),
    );
  }

  Widget Troca() {
    return widgetId == 1 ? Modulo1(context) : Modulo2(context);
  }

  void _updateWidget() {
    setState(() {
      widgetId = widgetId == 1 ? 2 : 2;
    });
  }

  void _updateWidget2() {
    setState(() {
      widgetId = widgetId == 2 ? 1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    final double telaTocaDeLayout = 1150.0;

    return Scaffold(
      appBar: Header(),
      backgroundColor: Color.fromARGB(255, 6, 18, 32),
      body: Column(
        children: [
          Container(
              width: screenWidth,
              height: screenHeight * .45,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/Desktop1.png'),
                    fit: BoxFit.fitWidth),
              )),
          SizedBox(
            height: screenHeight * .08,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox.fromSize(
                size: const Size(36, 36), // button width and height
                child: ClipOval(
                  child: Material(
                    color: Color.fromARGB(255, 166, 168, 174), // button color
                    child: InkWell(
                      splashColor:
                          Color.fromARGB(255, 142, 142, 142), // splash color
                      onTap: () {
                        _updateWidget2();
                      }, // button pressed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.arrow_back,
                          ) // icon
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(seconds: 2),
                child: Troca(),
              ),
              SizedBox.fromSize(
                size: const Size(36, 36), // button width and height
                child: ClipOval(
                  child: Material(
                    color: Color.fromARGB(255, 166, 168, 174), // button color
                    child: InkWell(
                      splashColor:
                          Color.fromARGB(255, 142, 142, 142), // splash color
                      onTap: () {
                        _updateWidget();
                      }, // button pressed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.arrow_forward,
                          ) // icon
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
