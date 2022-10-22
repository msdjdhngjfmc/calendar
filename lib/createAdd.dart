import 'package:flutter/material.dart';


class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _createStateAdd();
}




class createAdd extends StatelessWidget {
  const createAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Создание дела'),
        actions: [
         // IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,))
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF316773),
      ),
      body: Container(
        child: Create(),
      ),
    );
  }
}





class _createStateAdd extends State<Create>{

  List todoList = [];

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  late bool a;
  late bool b;
  late bool c;
  late bool d;
  late bool _active;
  late bool _active2;
  late bool _active3;
  late bool _active4;
  late bool importanceOfTheCase1;
  late bool importanceOfTheCase2;
  late bool checkMark;
  late var checkMarkState;
  final controllerOne = TextEditingController();


  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  void initState(){
    _active = false;
    _active2 = false;
    _active3 = false;
    _active4 = false;
    a = true;
    b = false;
    c = true;
    d = false;
    importanceOfTheCase1 = true;
    importanceOfTheCase2 = false;
    checkMark = true;
    checkMarkState = 0;
  }

  void _addCheckListTitle (String text){
        controllerOne.clear();
        todoList.add(text);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFF316773),
        padding: EdgeInsets.only(bottom:10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Expanded(child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        ElevatedButton(

                          onPressed: () {
                            setState(() {
                              if(_active == true){
                                _active = !_active;
                                _active2 = !_active2;
                              }

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
                              elevation:ButtonStyleButton.allOrNull(_active ? 0.0 : 2.2),
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
                            setState(() {
                              if(_active2 == false){
                                _active = !_active;
                                _active2 = !_active2;
                              }
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
                            child: Text('Сложное дело',style: TextStyle(color: _active2 ? Color(0xFF316773) : Color(0xFFFFFFFF),fontSize: _active2 ? 16 : 18),),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                              elevation:ButtonStyleButton.allOrNull(_active2 ? 2.2 : 0.0),
                              backgroundColor: MaterialStateProperty.all(
                                  _active2 ? Color(0xFFDCC8BF) : Color(0xFF316773))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              a == true ? new Expanded(
                  child:Container(
                    //color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        Container(
                          child:
                          TextField(
                            maxLength: 60,

                            decoration: InputDecoration(
                              hintText: "Тема",
                              counterStyle: TextStyle(color:  Color(0xFFE1F0EF)),
                              hintStyle: TextStyle(color: Color(0xFFE1F0EF)),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFE1F0EF)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFE1F0EF)),
                              ),
                            ) ,
                            style: TextStyle(color: Color(0xFFE1F0EF),fontSize: 20),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    if(_active3 == true){
                                      _active3 = !_active3;
                                      _active4 = !_active4;
                                    }

                                    if (c) {
                                      // a = false;
                                    } else {
                                      c = true;
                                      d = false;
                                    }
                                  });
                                },

                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Описание',style: TextStyle(color: _active3 ? Color(0xFFFFFFFF) : Color(0xFF316773), fontSize: _active ? 18 : 16),),
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                    elevation:ButtonStyleButton.allOrNull(_active3 ? 0.0 : 2.2),
                                    backgroundColor: MaterialStateProperty.all(
                                        _active3 ? Color(0xFF316773) : Color(0xFFDCC8BF))),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                ElevatedButton(

                                  onPressed: () {
                                    setState(() {
                                      if(_active4 == false){
                                        _active3 = !_active3;
                                        _active4 = !_active4;
                                      }
                                      if (d) {
                                        // b = false;
                                      } else {
                                        d = true;
                                        c = false;
                                      }
                                    });
                                  },

                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text('Чеклист',style: TextStyle(color: _active4 ? Color(0xFF316773) : Color(0xFFFFFFFF),fontSize: _active2 ? 16 : 18),),
                                  ),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                      elevation:ButtonStyleButton.allOrNull(_active4 ? 2.2 : 0.0),
                                      backgroundColor: MaterialStateProperty.all(
                                          _active4 ? Color(0xFFDCC8BF) : Color(0xFF316773))),
                                ),
                              ],
                            ),

                          ],
                        ),
                        c == true ? new Expanded(child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child:
                              TextField(
                                maxLength: 300,
                                decoration: InputDecoration(
                                  hintText: "Описание",
                                  counterStyle: TextStyle(color:  Color(0xFFE1F0EF)),
                                  hintStyle: TextStyle(color: Color(0xFFE1F0EF)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFE1F0EF)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFE1F0EF)),
                                  ),
                                ) ,
                                style: TextStyle(color: Color(0xFFE1F0EF)),

                              ),

                            ),

                            Flexible(
                              fit: FlexFit.tight,
                              child:  ListView(
                                children: [
                                  Container(
                                    //padding: EdgeInsets.symmetric(horizontal: 18),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.sell_outlined,color: Color(0xFFD9CAC2),),
                                            Container(
                                              margin: EdgeInsets.only(left: 4),
                                              child: Text('Важность дела',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xFFD9CAC2),
                                                    shadows: [ Shadow(color: Colors.black26, blurRadius: 1, offset: Offset(2, 2))]
                                                ),),
                                            )
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 12,bottom: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFFEC5783),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false&&checkMarkState==1){
                                                          checkMark= true;
                                                          checkMarkState = 0;
                                                        }else {
                                                          checkMark = false;
                                                          checkMarkState = 1;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFFFBBE77),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false){
                                                          checkMark= true;
                                                        }else {
                                                          checkMark = false;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFF59C26F),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false){
                                                          checkMark= true;
                                                        }else {
                                                          checkMark = false;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFFE1F0EF),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false){
                                                          checkMark= true;
                                                        }else {
                                                          checkMark = false;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFF5B59C2),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false){
                                                          checkMark= true;
                                                        }else {
                                                          checkMark = false;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFF8E59C2),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false){
                                                          checkMark= true;
                                                        }else {
                                                          checkMark = false;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                                    color: Color(0xFF62636A),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    onTap: () {
                                                      setState(() {
                                                        if(checkMark == false){
                                                          checkMark= true;
                                                        }else {
                                                          checkMark = false;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.all(1.0),
                                                      child: Icon(
                                                        checkMark==true? Icons.check : null,
                                                        size: 25.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //padding: EdgeInsets.symmetric(horizontal: 18),
                                    child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.access_time_outlined,color: Color(0xFFD9CAC2),),
                                            Container(
                                              margin: EdgeInsets.only(left: 4),
                                              child: Text('Весь день',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xFFD9CAC2),
                                                    shadows: [ Shadow(color: Colors.black26, blurRadius: 1, offset: Offset(2, 2))]
                                                ),),
                                            )
                                          ],
                                        ),
                                        Switch(
                                          value: isSwitched,
                                          onChanged: toggleSwitch,
                                          inactiveThumbColor: Colors.white,
                                          inactiveTrackColor: Color(0xFF8FC0C5),
                                          activeColor: Colors.white,
                                          activeTrackColor: Color(0xFF8FC0C5),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                  Text('data'),
                                ],
                              ),
                            )
                          ],
                        )): new Container(),
                        d == true ? new Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    minHeight: 0,
                                    maxHeight: 240
                                ),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: todoList.length,
                                  itemBuilder: (BuildContext context, int index){
                                    return Dismissible(
                                        key: Key(todoList[index]),
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 0,top: 0),
                                          padding: EdgeInsets.only(bottom: 0,top: 0),
                                          height: 40,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(right: 15,left: 8),
                                                    padding: EdgeInsets.only(top: 0,bottom: 0),
                                                    child: Icon(Icons.circle_outlined,color: Color(0xFFE1F0EF),size: 30,),
                                                  ),
                                                  Text(todoList[index],style: TextStyle(color: Color(0xFFE1F0EF),fontSize: 20),),
                                                ],
                                              ),
                                              IconButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      todoList.removeAt(index);
                                                    });
                                                  },
                                                  icon: Icon(Icons.close,color: Colors.white,size: 20))
                                            ],
                                          )
                                        ),
                                        onDismissed: (direction){
                                          if(direction == DismissDirection.endToStart){
                                            setState(() {
                                              todoList.removeAt(index);
                                            });
                                          }
                                        },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              child:
                              TextField(
                                controller: controllerOne,
                                onSubmitted: _addCheckListTitle,
                                maxLength: 60,
                                decoration: InputDecoration(

                                  prefixIcon: Icon(Icons.circle_outlined,color: Color(0xFFE1F0EF),size: 30,),
                                  counterStyle: TextStyle(color:  Color(0xFFE1F0EF)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFE1F0EF)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFE1F0EF)),
                                  ),
                                ) ,
                                style: TextStyle(color: Color(0xFFE1F0EF),fontSize: 20),

                              ),

                            ),
                            Row(
                              children: [
                                Icon(Icons.sell_outlined,color: Color(0xFFD9CAC2),),
                                Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Text('Важность дела',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFFD9CAC2),
                                        shadows: [ Shadow(color: Colors.black26, blurRadius: 1, offset: Offset(2, 2))]
                                    ),),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFFEC5783),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false&&checkMarkState==1){
                                              checkMark= true;
                                              checkMarkState = 0;
                                            }else {
                                              checkMark = false;
                                              checkMarkState = 1;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFFFBBE77),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false){
                                              checkMark= true;
                                            }else {
                                              checkMark = false;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFF59C26F),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false){
                                              checkMark= true;
                                            }else {
                                              checkMark = false;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFFE1F0EF),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false){
                                              checkMark= true;
                                            }else {
                                              checkMark = false;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFF5B59C2),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false){
                                              checkMark= true;
                                            }else {
                                              checkMark = false;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFF8E59C2),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false){
                                              checkMark= true;
                                            }else {
                                              checkMark = false;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xFFE1F0EF), width: 2),
                                        color: Color(0xFF62636A),
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50.0),
                                        onTap: () {
                                          setState(() {
                                            if(checkMark == false){
                                              checkMark= true;
                                            }else {
                                              checkMark = false;
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Icon(
                                            checkMark==true? Icons.check : null,
                                            size: 25.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ): new Container(),


                      ],
                    ),
                  ) )  : new Container(),





            ],
          )),
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
        ]
        ),
      )
    );
  }

}
