import 'package:conquistandoomundo/pages/dashboardAulas/viewAulas.dart';
import 'package:conquistandoomundo/pages/dashboardAulas/views/appbar.dart';
import 'package:flutter/material.dart';

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
      body: ViewAulas(),
      appBar: barzin(),

      //body:DashBoardBody(),
    );
  }
}
