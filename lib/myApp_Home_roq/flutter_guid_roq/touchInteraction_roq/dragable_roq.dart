import 'package:flutter/material.dart';

class Draggable_Roq extends StatefulWidget {

  @override
  _Draggable_RoqState createState() => _Draggable_RoqState();

  const Draggable_Roq();
}

class _Draggable_RoqState extends State<Draggable_Roq> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Draggable<Color>(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Center(
            child: Text('Child'),
          ),
        ),
        feedback: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Center(
            child: Text(
              'feedback',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
              ),
            ),
          ),
        ),
        childWhenDragging: Container(
          color: Colors.blue,
          width: 150,
          height: 150,
          child: Center(
            child: Text('childWhenDragging'),
          ),
        ),
        data: Colors.green,
      ),
    );
  }
}


