import 'package:conquistandoomundo/pages/calendar/view/calendar.dart';
import 'package:conquistandoomundo/pages/calendar/view/mentors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(7, 20, 36, 1),
        child: LayoutBuilder(
          builder: ((context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [buildCalendar()],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildMentor(),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ));
  }
}
