class TrocarCorDashboardHeader {
  final String color;
  TrocarCorDashboardHeader({required this.color});

  String trocarCor(String color) {
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
    return trocarCor(this.color);
  }
}
