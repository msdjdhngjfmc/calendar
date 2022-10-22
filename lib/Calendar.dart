import 'package:flutter/material.dart';
import 'createAdd.dart';
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
  late bool a;
  late bool b;
  late bool _active;
  late bool _active2;
  var dayOfWeek = 'Сегодня';
  TextEditingController _textFieldController = TextEditingController();

  @override
  void initState(){
    _active = false;
    _active2 = false;
    a = true;
    b = false;
  }


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
        resizeToAvoidBottomInset: false,
      body: Container(
          color: Color(0xFF8FC0C5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 0),
                    )],
                    color: Color(0xFF316773),
                  ),
                  child: TableCalendar(
                    locale: 'ru_RU',

                    focusedDay: selectedDay,
                    firstDay: DateTime(1990),
                    lastDay: DateTime(2050),
                    calendarFormat: format,
                    onFormatChanged: (CalendarFormat _format){
                      setState(() {
                        format = _format;
                      });
                    },
                    rowHeight: 35,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekVisible: true,
                    onDaySelected: (DateTime selectDay, DateTime focuseDay){
                      setState(() {
                        selectedDay = selectDay;
                        focusedDay = focuseDay;

                        if(selectedDay.weekday == 1){
                          dayOfWeek = 'Понедельник';
                        }else
                        if(selectedDay.weekday == 2){
                          dayOfWeek = 'Вторник';
                        }else
                        if(selectedDay.weekday == 3){
                          dayOfWeek = 'Среда';
                        }else
                        if(selectedDay.weekday == 4){
                          dayOfWeek = 'Четверг';

                        }else
                        if(selectedDay.weekday == 5){
                          dayOfWeek = 'Пятница';
                        }else
                        if(selectedDay.weekday == 6){
                          dayOfWeek = 'Суббота';
                        }else
                          dayOfWeek = 'Воскресенье';
                        if(selectedDay.day == DateTime.now().day &&  selectedDay.month == DateTime.now().month && selectedDay.year == DateTime.now().year){
                          dayOfWeek = 'Сегодня';
                        }
                      });
                    },
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                        fontSize: 12,
                        color:  Colors.white,
                        height: 1
                      ),
                      weekendStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      headerPadding: EdgeInsets.all(0),
                      headerMargin: EdgeInsets.all(0),
                      leftChevronMargin: EdgeInsets.only(top: 5,bottom: 10,left: 15),
                      rightChevronMargin: EdgeInsets.only(top: 5,bottom: 10,right: 15),
                      leftChevronPadding: EdgeInsets.only(top: 0,bottom: 0),
                      rightChevronPadding: EdgeInsets.only(top: 0,bottom: 0),
                      leftChevronIcon: Icon(color: Colors.white,Icons.keyboard_arrow_left),
                      rightChevronIcon: Icon(color: Colors.white,Icons.keyboard_arrow_right),
                      titleCentered: true,
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    calendarStyle: CalendarStyle(
                        isTodayHighlighted: true,
                        selectedDecoration: BoxDecoration(
                          color: Color(0xFF1C343B),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        selectedTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        todayDecoration: BoxDecoration(
                          color: Color(0xFF8FC0C5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        defaultTextStyle: TextStyle(color: Colors.white),
                        weekendTextStyle: TextStyle(color: Colors.white70)
                    ),
                    selectedDayPredicate: (DateTime date){
                      return isSameDay(selectedDay, date);

                    },
                  ),
                ),
              ),
              Expanded(
                  child:
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 14,
                          child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10,left: 3),
                                  child: Text('Просроченные',style: TextStyle(color: Color(0xFFE1F0EF),fontSize: 14),),
                                ),
                                Expanded(child:
                                Container(
                                    decoration: BoxDecoration(
                                    color: Color(0xFF316773),
                                    borderRadius: new BorderRadius.circular(10.0),

                                  ),

                                ))
                              ],
                            ),
                        ),
                        Expanded(
                          flex: 1,
                            child:Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF3A484A),

                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                          margin: EdgeInsets.fromLTRB(4, 35, 4, 10),
                          width: 2,
                        )),
                        Expanded(
                          flex: 14,
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10,left: 3,right: 3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: Text('${dayOfWeek}',style: TextStyle(color: Color(0xFFE1F0EF),fontSize: 14),),
                                    ),
                                    Text('${selectedDay.day}.${selectedDay.month}',style: TextStyle(color: Color(0xFFE1F0EF),fontSize: 14),)
                                  ],
                                ),
                              ),
                              Expanded(child:
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF316773),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )

              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => createAdd()));
                  },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height*0.05+MediaQuery.of(context).size.width*0.01,
                        width: MediaQuery.of(context).size.width*0.7,
                        decoration: BoxDecoration(
                            color: Color(0xFFE1F0EF),
                            borderRadius: new BorderRadius.circular(10.0)
                        ),
                        child: Text('Добавить дело',style: TextStyle(
                          color: Color(0xFF316773),
                          fontSize: 16
                          ),
                      ),
                    )
                  )
                ],
              ),

            ],
          ),
        )


      
    );

  }

  void _showSimpleDialog() {

      setState(() {
        format = CalendarFormat.week;

      });

      showGeneralDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.1),
      pageBuilder: (BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation){
        return  Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 8,left: 10,right: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFF316773),
                borderRadius: new BorderRadius.circular(10.0)
            ),
            height: MediaQuery.of(context).size.height*0.738,
            child: Column(
              children: [

                Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 65),
                      child:
                      Text('Создание дела',style: TextStyle(
                        fontFamily:'Arial',
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal
                      ),),
                    ),
                    Container(
                         width: 25,
                          height: 25,
                          child: FloatingActionButton(
                            elevation: 0,
                            onPressed: () => Navigator.pop(context, true),
                            backgroundColor: Color(0xFF316773),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          )
                    ),

                  ],
                ),
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 15,bottom: 0),

                  child:
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatefulBuilder(builder: (context, myState) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    ElevatedButton(

                                      onPressed: () {
                                        myState(() {
                                          _active = !_active;
                                          _active2 = !_active2;
                                          if (a) {
                                            // a = false;
                                          } else {
                                            a = true;
                                            b = false;
                                          }
                                        });
                                      },

                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 13),
                                        child: Text('Простое дело',style: TextStyle(color: _active ? Color(0xFFFFFFFF) : Color(0xFF316773), fontSize: _active ? 18 : 16),),
                                      ),
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                          elevation:ButtonStyleButton.allOrNull(_active ? 0.0 : 1.1),
                                          backgroundColor: MaterialStateProperty.all(
                                              _active ? Color(0xFF316773) : Color(0xFFDCC8BF))),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    ElevatedButton(

                                      onPressed: () {
                                        myState(() {
                                          _active2 = !_active2;
                                          _active = !_active;
                                          if (b) {
                                            // b = false;
                                          } else {
                                            b = true;
                                            a = false;
                                          }
                                        });
                                      },

                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 13),
                                        child: Text('Сложное дело',style: TextStyle(color: _active2&&b==false ? Color(0xFF316773) : Color(0xFFFFFFFF),fontSize: _active2 ? 16 : 18),),
                                      ),
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                          elevation:ButtonStyleButton.allOrNull(_active2 ? 1.1 : 0.0),
                                          backgroundColor: MaterialStateProperty.all(
                                              _active2 ? Color(0xFFDCC8BF) : Color(0xFF316773))),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            a == true ? new Container(
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Container(
                                      child: SimpleDialog (
                                        contentPadding:EdgeInsets.all(2),
                                        clipBehavior: Clip.none,
                                        elevation:0,
                                        children: [
                                          TextField(
                                            autofocus:false,
                                            enableIMEPersonalizedLearning:false,
                                            enableInteractiveSelection:false,
                                            enableSuggestions:false,
                                            expands:false,
                                            scribbleEnabled:false,
                                            clipBehavior: Clip.none ,
                                            controller: _textFieldController,
                                            decoration: InputDecoration(hintText: "Text Field in Dialog"),
                                          ),
                                        ],
                                        backgroundColor: Color(0xFF316773),
                                      )
                                  ),
                                  Text("data")
                                ],
                              ),
                            )  : new Container(),
                            b == true ? new Container(

                              color: Colors.blue,

                            )  : new Container(),
                          ],
                        );
                      }),
                      TextButton(onPressed: (){},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                            elevation: MaterialStateProperty.all(4),
                            backgroundColor: MaterialStateProperty.all(Color(0xFFE1F0EF)),
                          ),
                          child:  Container(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.19,vertical: MediaQuery.of(context).size.width*0.01),
                            child: Text('Добавить дело',style: TextStyle(
                                color: Color(0xFF316773),
                                fontSize: 16
                            ),
                            ),
                          )
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        );

      }

  );

  }



}


