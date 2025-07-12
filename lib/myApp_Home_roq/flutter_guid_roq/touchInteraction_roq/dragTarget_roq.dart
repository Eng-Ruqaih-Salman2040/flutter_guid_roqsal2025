import 'package:flutter/material.dart';

class DragTarget_Roq extends StatefulWidget {

  @override
  _DragTarget_RoqState createState() => _DragTarget_RoqState();

  const DragTarget_Roq();
}

class _DragTarget_RoqState extends State<DragTarget_Roq> {
  String status = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 300,
          height: 200,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Draggable(
                  onDraggableCanceled: (v, f) {
                    setState(() => status = 'onDraggableCanceled');
                  },
                  data: 1.0,
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    color: Colors.blue,
                    child: Text('Drag'),
                  ),
                  feedback: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: Text(
                        'Drag',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: DragTarget(
                  builder: (BuildContext context, List<dynamic> candidateData,
                      List<dynamic> rejectedData) {
                    return Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: Text('Target'),
                    );
                  },
                  onWillAccept: (double? value) {
                    setState(() => status = 'onWillAccept: $value');
                    return true;
                  },
                  onAccept: (double value) {
                    setState(() => status = 'onAccept: $value');
                  },
                  onLeave: (value) {
                    setState(() => status = 'onLeave: $value');
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Text(status),
              )
            ],
          ),
        ),
      ],
    );
  }
}


