import 'package:flutter/material.dart';

class Divider_widget_roq extends StatelessWidget {
  const Divider_widget_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Divider(),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Divider(
            color: Colors.pink,
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Divider(
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Colors.green,
          ),
          Container(
            height: 100,
            color: Colors.yellowAccent,
          ),
        ],),);
  }}
