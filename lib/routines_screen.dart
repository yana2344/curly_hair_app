import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class RoutinesScreen extends StatefulWidget {
   RoutinesScreen({Key? key}) : super(key: key);
   State<RoutinesScreen> createState() => _RoutinesScreenState();
}

class _RoutinesScreenState extends State<RoutinesScreen> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar (title: Text("My curly routines"),
     ),
      body:content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Text("Routine Calendar"),
        Container(
          child: TableCalendar(
            focusedDay: today,
            selectedDayPredicate: (day) => isSameDay(day, today),
            headerStyle: HeaderStyle(formatButtonVisible: false),
            firstDay: DateTime.utc(2010, 10,16),
            lastDay:  DateTime.utc(2050, 10,16),
            onDaySelected: _onDaySelected,
          ),
        ),
      ],
    );
  }



}