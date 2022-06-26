import 'package:conquistandoomundo/features/dashBoard/views/dashBoardAppBar.dart';
import 'package:conquistandoomundo/features/dashBoard/views/dashBoardBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewDashBoard extends StatelessWidget {
  const ViewDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B1423),
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10,),
                Image.asset("/imgLogo.png"),
                SizedBox(width: 50,),

                FloatingActionButton.extended(
                  label: Text('Dashboard'), // <-- Text
                  backgroundColor: Colors.transparent,
                  icon: Icon( Icons.home_filled,
                    size: 36.0,
                  ),
                  onPressed: () {

                  },
                ),
                FloatingActionButton.extended(
                  label: Text('Calendário'), // <-- Text
                  backgroundColor: Colors.transparent,
                  icon: Icon( Icons.calendar_today,
                    size: 36.0,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  label: Text('Aulas'), // <-- Text
                  backgroundColor: Colors.transparent,
                  icon: Icon( Icons.my_library_books_rounded,
                    size: 36.0,
                  ),
                  onPressed: () {},
                ),

                FloatingActionButton.extended(
                  label: Text('Perfil'), // <-- Text
                  backgroundColor: Colors.transparent,
                  icon: Icon( Icons.account_circle_rounded,
                    size: 36.0,
                  ),
                  onPressed: () {},
                ),

                SizedBox(width: 200,),
                Image.asset("/imgLogo.png"),
                SizedBox(width: 10,),
              ],
            ),
          ),
        ],
        toolbarHeight: 70,
      ),


      body:DashBoardBody(),
    );
  }
}
