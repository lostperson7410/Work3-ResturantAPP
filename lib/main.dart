import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ตัวแปรเก็บค่าเจำนวนของมนู
var _counter1 = 0;
var _counter2 = 0;
var _counter3 = 0;
var _counter4 = 0;
var _counter5 = 0;


class headerSection extends StatelessWidget { //ส่วนในการแสดงของภาพCoC และรหัสนักศึกษา
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.amber,
        child: Row(children: <Widget>[
          Column(
            children: <Widget>[Image.asset("assets/image/coc.jpg",width: 200,)],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("CoC Resturant",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                      Text("Phuket thailand"),
                      Text(
                        "6035512013",
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                      ),
                      Text(
                        "Apinun sonsomsak",
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                      )
                    ])
              ])
        ]));
  }
}

class MyApp extends StatelessWidget { //หน้าMainในการทำงาน
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Work3")),
            body: ListView(
              children: <Widget>[headerSection(), ListPage(),],
            )));
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> { //stateต่างๆ


  String Texts = 'Submit';
  int fixcounter = 0; //debugcode เลข -
  var opacity = 0.0;  //opacityในการทำfade in/out
  void _incrementCounter1() { //state + เลข
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {//state + เลข
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter3() {//state + เลข
    setState(() {
      _counter3++;
    });
  }

  void _incrementCounter4() {//state + เลข
    setState(() {
      _counter4++;
    });
  }

  void _incrementCounter5() {//state + เลข
    setState(() {
      _counter5++;
    });
  }

  void _decrementCounter1() {//state - เลข และdebugไม่ไห้แสดงเลขตืดลบ
    setState(() {
      _counter1--;
      if(_counter1<0)
      {setState(() {
        _counter1 = fixcounter;
      });
      }
    });
  }

  void _decrementCounter2() {//state - เลข และdebugไม่ไห้แสดงเลขตืดลบ
    setState(() {
      _counter2--;
      if(_counter2<0)
      {setState(() {
        _counter2 = fixcounter;
      });
      }
    });
  }

  void _decrementCounter3() {//state - เลข และdebugไม่ไห้แสดงเลขตืดลบ
    setState(() {
      _counter3--;
      if(_counter3<0)
      {setState(() {
        _counter3 = fixcounter;
      });
      }
    });
  }

  void _decrementCounter4() {//state - เลข และdebugไม่ไห้แสดงเลขตืดลบ
    setState(() {
      _counter4--;
      if(_counter4<0)
      {setState(() {
        _counter4 = fixcounter;
      });
      }
    });
  }

  void _decrementCounter5() {//state - เลข และdebugไม่ไห้แสดงเลขตืดลบ
    setState(() {
      _counter5--;
      if(_counter5<0)
      {setState(() {
        _counter5 = fixcounter;
      });
      }
    });
  }

  @override
  Widget build(BuildContext context) { //ส่วนของmenuและปุ่มกด
    return Container(color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(color: Colors.lightGreenAccent,
            height: 300,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/image/Menu1.jpg',
                      width: 240,
                      height: 155,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Menu1",
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                MaterialButton(
                                    onPressed: _incrementCounter1,
                                    child: Text("+"),
                                    color: Colors.black38,
                                    minWidth: 30),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  '$_counter1',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                MaterialButton(
                                  onPressed: _decrementCounter1,
                                  child: Text("-"),
                                  color: Colors.black38,
                                  minWidth: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/image/Menu2.jpg',
                      width: 240,
                      height: 154,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Menu2",
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                MaterialButton(
                                  onPressed: _incrementCounter2,
                                  child: Text("+"),
                                  color: Colors.black38,minWidth: 30,
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  '$_counter2',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                MaterialButton(
                                  onPressed: _decrementCounter2,
                                  child: Text("-"),
                                  color: Colors.black38,
                                  minWidth: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/image/Menu3.jpg',
                      width: 240,
                      height: 160,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Menu3",
                              style: TextStyle(fontSize: 20),
                            ),

                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                MaterialButton(
                                  onPressed: _incrementCounter3,
                                  child: Text("+"),
                                  color: Colors.black38,minWidth: 30,
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  '$_counter3',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                MaterialButton(
                                  onPressed: _decrementCounter3,
                                  child: Text("-"),
                                  color: Colors.black38,
                                  minWidth: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/image/Menu4.jpg',
                      width: 240,
                      height: 160,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Menu4",
                              style: TextStyle(fontSize: 20),
                            ),

                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                MaterialButton(
                                  onPressed: _incrementCounter4,
                                  child: Text("+"),
                                  color: Colors.black38,minWidth: 30,
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  '$_counter4',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                MaterialButton(
                                  onPressed: _decrementCounter4,
                                  child: Text("-"),
                                  color: Colors.black38,
                                  minWidth: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/image/Menu5.jpg',
                      width: 240,
                      height: 160,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Menu5",
                              style: TextStyle(fontSize: 20),
                            ),

                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                MaterialButton(
                                  onPressed: _incrementCounter5,
                                  child: Text("+"),
                                  color: Colors.black38,
                                  minWidth: 30,
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  '$_counter5',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                MaterialButton(
                                  onPressed: _decrementCounter5,
                                  child: Text("-"),
                                  color: Colors.black38,
                                  minWidth: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ,Container(height: 105, child:Column(children: <Widget>[
          Container(padding: EdgeInsets.only(top: 20),color: Colors.white,
            child: MaterialButton(
       onPressed:(){
        setState(() {
          if(_counter1|_counter2|_counter3|_counter4|_counter5 < 1) //แสดงfade in ไห้เตื่อน
            {opacity = 1;
            }
          else{
            opacity = 0; //fade outและไปหน้าถัดไป
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondPage()));}

           });
    },
              child: Column(children: <Widget>[Text("Submit")],),
              color: Colors.red,
    ),
    ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              child: Column(
                children: <Widget>[
                  Text("***Please Select Menu***",style: TextStyle(color: Colors.red),),
                ],
              ),
              opacity: opacity,
            )
            ,
          ],
          )
          ),Container(
            color: Colors.black,child: Row(),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget{ //หน้าถัดไป
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: ListView(children: <Widget>[Menulist(),
      ],
      )
    );
  }
}
class Menulist extends ListPage{
  MenulistState createState() => new MenulistState();
}

class MenulistState extends _ListPageState {

  bool _isVisible1 = false;
/*
  var showcounter1= Container(child: Row(children: <Widget>[Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu1")],),
        Padding(padding: EdgeInsets.only(left: 300.0)),
        Column(children: <Widget>[Text('$_counter2')],),
      ],
      ),
      ]
        ,),
      );
  void showcounter2() {
    if(_counter2 >=1) {
      setState(() {
        _isVisible1 = !_isVisible1;
      });
      Container(child: Row(children: <Widget>[Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu1")],),
        Padding(padding: EdgeInsets.only(left: 300.0)),
        Column(children: <Widget>[Text('$_counter2')],),
      ],
      ),
      ]
        ,),
      );
    }
    else{
      _isVisible1 = false;
    }
  }
  void showcounter3() {
    if(_counter3 >=1) {
      setState(() {
        _isVisible1 = !_isVisible1;
      });
      Container(child: Row(children: <Widget>[Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu1")],),
        Padding(padding: EdgeInsets.only(left: 300.0)),
        Column(children: <Widget>[Text('$_counter3')],),
      ],
      ),
      ]
        ,),
      );
    }
    else{
      _isVisible1 = false;
    }
  }
  void showcounter4() {
    if(_counter4 >=1) {
      setState(() {
        _isVisible4 = !_isVisible4;
      });
      Container(child: Row(children: <Widget>[Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu1")],),
        Padding(padding: EdgeInsets.only(left: 300.0)),
        Column(children: <Widget>[Text('$_counter4')],),
      ],
      ),
      ]
        ,),
      );
    }
    else{
      _isVisible4 = false;
    }
  }
  void showcounter5() {
    if(_counter5 >=1) {
      setState(() {
        _isVisible5 = !_isVisible5;
      });
      Container(child: Row(children: <Widget>[Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu1")],),
        Padding(padding: EdgeInsets.only(left: 300.0)),
        Column(children: <Widget>[Text('$_counter5')],),
      ],
      ),
      ]
        ,),
      );
    }
    else{
      _isVisible5 = false;
    }
  }
*/
  @override
  Widget build(BuildContext context) {//กำหนดเงืิ่อนไขในการแสดงของแต่ละmenu
    // TODO: implement build
    return Container(height: 200,child: Column(children: <Widget>[
      if(_counter1!=0) //กำหนดเงืิ่อนไขในการแสดงของแต่ละmenu
        Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,size: 40,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu1")],),
        Padding(padding: EdgeInsets.only(left: 260.0)),
        Column(children: <Widget>[Text('$_counter1')],),
      ],),
      if(_counter2!=0)
        Row(children: <Widget>[
      Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,size: 40,)],),
      Padding(padding: EdgeInsets.only(left: 20.0)),
      Column(children: <Widget>[Text("Menu2")],),
      Padding(padding: EdgeInsets.only(left: 260.0)),
      Column(children: <Widget>[Text('$_counter2')],),
    ],),
      if(_counter3!=0)
        Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,size: 40,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu3")],),
        Padding(padding: EdgeInsets.only(left: 260.0)),
        Column(children: <Widget>[Text('$_counter3')],),
      ],),
      if(_counter4!=0)
        Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,size: 40,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu4")],),
        Padding(padding: EdgeInsets.only(left: 260.0)),
        Column(children: <Widget>[Text('$_counter4')],),
      ],),
      if(_counter5!=0)
        Row(children: <Widget>[
        Column(children: <Widget>[Icon(Icons.fastfood, color: Colors.amber,size: 40,)],),
        Padding(padding: EdgeInsets.only(left: 20.0)),
        Column(children: <Widget>[Text("Menu5")],),
        Padding(padding: EdgeInsets.only(left: 260.0)),
        Column(children: <Widget>[Text('$_counter5')],),
      ],),],),
    );
  }
}


