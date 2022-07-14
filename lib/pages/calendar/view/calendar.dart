import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

Widget buildCalendar() => Builder(
    builder: (context) => Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: SfCalendar(
          view: CalendarView.week,
          firstDayOfWeek: 6,
          //initialDisplayDate: DateTime(2022, 7, 12, 8, 30),
          //initialSelectedDate: DateTime(2022, 7, 12, 10, 30),
          dataSource: MeetingDataSource(getAppointments()),
        )));

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Board Meeting',
      color: Colors.pink[700]!,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  /* 
    recurrenceRule
    FREQ -> DAILY WEEKLY MONTHLY YEARLY EVERYWEEKDAY
    INTERVEL -> (NUMBER)
    COUNT -> (NUMBER)
    UNTIL -> (DATETIME)
    BYDAY -> MO WE
    BYMONTHDAY -> (NUMBER)
    BYMONTH -> (NUMBER)
    BYSETPOS -> (NUMBER) 
   */

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
