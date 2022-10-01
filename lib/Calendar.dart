import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';




class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        leading:
        IconButton(
          iconSize: 30,
          icon: Icon(Icons.menu,color: Colors.white,),
          onPressed: (){},
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF8FC0C5),
      ),
      body: Column(

        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF316773),
            ),
            child: TableCalendar(

              focusedDay: DateTime.now(),
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format){
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Привет',style: TextStyle(fontSize: 25),)
            ],
          ),
        ],
      )
      
    );
  }
}
