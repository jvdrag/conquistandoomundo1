import 'package:conquistandoomundo/features/dashBoard/views/dashBoardBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/trocarCorDashboardHeader.dart';

class ViewDashBoard extends StatelessWidget {
  String color = 'kk';

  @override
  Widget build(BuildContext context) {
    //TrocarCorDashboardHeader trocarCorDashboardHeader = TrocarCorDashboardHeader(color: cor);
/*
    TrocarCorDashboardHeader trocarCorDashboardHeaderPerfil = TrocarCorDashboardHeader(color: 'Perfil');
    TrocarCorDashboardHeader trocarCorDashboardHeaderCalendario = TrocarCorDashboardHeader(color: 'Calendario');
    TrocarCorDashboardHeader trocarCorDashboardHeaderAulas = TrocarCorDashboardHeader(color: 'Aulas');
*/
    return Scaffold(
      appBar: AppBar(
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
                    color:
                        getColor() == 'Dashboard' ? Colors.blue : Colors.grey,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  label: Text('Calendario'), // <-- Text
                  backgroundColor: Colors.transparent,
                  icon: Icon(
                    Icons.calendar_today,
                    size: 36.0,
                    color:
                        getColor() == 'Calendario' ? Colors.blue : Colors.grey,
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
                    color: getColor() == 'Aulas' ? Colors.blue : Colors.grey,
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
                    color: getColor() == 'Perfil' ? Colors.blue : Colors.grey,
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
      ),
      body: DashBoardBody(),
    );
  }

  String trocarCor(color) {
    print(color + 'colorcolor');

    if (color == 'Dashboard') {
      print('Dashboard');
      return 'Dashboard';
/*      'Dashboard' == 'blue';
      'Calendario' == 'grey';
      'Aulas' == 'grey';
      'Perfil' == 'grey';*/
    }
    if (color == 'Calendario') {
      print('Calendario');

      return 'Calendario';

      /*'Calendario' == 'blue';
      'Dashboard' == 'grey';
      'Aulas' == 'grey';
      'Perfil' == 'grey';*/
    }
    if (color == 'Aulas') {
      print('aulas');

      return 'Aulas';

      /*'Aulas' == 'blue';
      'Calendario' == 'grey';
      'Dashboard' == 'grey';
      'Perfil' == 'grey';*/
    }
    if (color == 'Perfil') {
      print('Perfil');

      return 'Perfil';

      /*'Perfil' == 'blue';
      'Calendario' == 'grey';
      'Aulas' == 'grey';
      'Dashboard' == 'grey';*/
    }
    return 'kkk';
  }

  String getColor() {
    return trocarCor(color);
  }
}
