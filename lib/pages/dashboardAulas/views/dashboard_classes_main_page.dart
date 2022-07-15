import 'package:conquistandoomundo/pages/dashboardAulas/views/home_item_builder.dart';
import 'package:conquistandoomundo/util/playlists_videos.dart';
import 'package:conquistandoomundo/util/style.dart';
import 'package:flutter/material.dart';

class DashboardClassesMainPage extends StatelessWidget {
  const DashboardClassesMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final double telaTocaDeLayout = 1150.0;

    return Column(
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
              size: Size(36, 36), // button width and height
              child: ClipOval(
                child: Material(
                  color: Color.fromARGB(255, 166, 168, 174), // button color
                  child: InkWell(
                    splashColor:
                        Color.fromARGB(255, 142, 142, 142), // splash color
                    onTap: () {}, // button pressed
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
            HomeItemBuilder(context, StartHereIDs, 'assets/Mdulo11.png'),
            HomeItemBuilder(context, ApplicationIDs, 'assets/Mdulo21.png'),
            HomeItemBuilder(context, MathIDs, 'assets/Mdulo31.png'),
            HomeItemBuilder(context, EnglishIDs, 'assets/Mdulo41.png'),
            HomeItemBuilder(context, EssaysIDs, 'assets/Mdulo52.png'),
            HomeItemBuilder(context, TOEFLIDs, 'assets/123.png'),
            SizedBox.fromSize(
              size: Size(36, 36), // button width and height
              child: ClipOval(
                child: Material(
                  color: Color.fromARGB(255, 166, 168, 174), // button color
                  child: InkWell(
                    splashColor:
                        Color.fromARGB(255, 142, 142, 142), // splash color
                    onTap: () {}, // button pressed
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
            )
          ],
        )
      ],
    );
  }
}
