import 'package:conquistandoomundo/features/dashBoard/viewDashBoard.dart';
import 'package:conquistandoomundo/features/dashBoard/views/dashBoardBody.dart';
import 'package:conquistandoomundo/features/dashboardAulas/viewAulas.dart';
import 'package:conquistandoomundo/features/dashboardAulas/views/appbar.dart';
import 'package:conquistandoomundo/features/dashboardAulas/views/videosAulas.dart';
import '/features/dashboardAulas/views/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/trocarCorDashboardHeader.dart';

class aulas1 extends StatelessWidget {
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
      body: VideosAulas(),
      appBar: barzin(),
    );
  }
}

class aulas2 extends StatelessWidget {
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
      body: VideosAulas2(),
      appBar: barzin(),
    );
  }
}
