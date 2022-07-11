import 'package:conquistandoomundo/features/dashboardAulas/viewVideosAulas.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class barzin extends StatelessWidget implements PreferredSizeWidget {
  String color = 'kk';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff0B1423),
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/imgLogo.png"),
              SizedBox(
                width: 50,
              ),
              FloatingActionButton.extended(
                label: Text('Dashboard'), // <-- Text
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.home_filled,
                  size: 36.0,
                ),
                onPressed: () {},
              ),
              FloatingActionButton.extended(
                label: Text('Calendario'), // <-- Text
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.calendar_today,
                  size: 36.0,
                ),
                onPressed: () {
                  color = 'Calendario';
                },
              ),
              FloatingActionButton.extended(
                label: Text('Aulas'), // <-- Text
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.my_library_books_rounded,
                  size: 36.0,
                ),
                onPressed: () {
                  color = 'Aulas';
                },
              ),
              FloatingActionButton.extended(
                label: Text('Perfil'), // <-- Text
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 36.0,
                ),
                onPressed: () {
                  color = 'Perfil';
                },
              ),
              SizedBox(
                width: 200,
              ),
              Image.asset("assets/imgLogo.png"),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
      toolbarHeight: 70,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
