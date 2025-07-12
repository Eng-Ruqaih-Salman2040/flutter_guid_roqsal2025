import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/constants.dart';


void main() {
  runApp(Padding_Widget_Roq());
}

class Padding_Widget_Roq extends StatefulWidget {
  const Padding_Widget_Roq({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Padding_Widget_Roq> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Padding'),
          ),
          body: Center(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(children: <Widget>[
              buildText_funroq(" padding from all"),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                color: Colors.green,
                child: Container(

                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Center(child: Text('padding: EdgeInsets.all(10)')),
                ),
              ),
              buildText_funroq(" padding from LTRB"),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(20, 30, 10, 15),
                color: Colors.green,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Center(child: Text('padding: EdgeInsets.fromLTRB(20, 30, 10, 15)')),
                ),
              ),
              buildText_funroq(" padding with only"),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 50),
                color: Colors.green,
                child: Container(

                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Center(child: Text('padding: EdgeInsets.only(left: 50),')),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 20, right: 10),
                color: Colors.green,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Center(child: Text('padding: EdgeInsets.only(left: 20, right: 10),')),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 20, bottom: 10),
                color: Colors.green,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Center(child: Text('padding: EdgeInsets.only(top: 20, bottom: 10),,')),

                ),
              ),
              buildText_funroq(" padding with symmetric"),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.green,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white70,
                  child: Center(child: Text('padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10'),
                  )
                ),
              ),
            ]),
          ))),
    );
  }
}