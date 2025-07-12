import 'package:flutter/material.dart';
class LongPressDraggableMain_Roq extends StatelessWidget {
  const LongPressDraggableMain_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LongPressDraggable_Roq();
  }
}


class LongPressDraggable_Roq extends StatefulWidget {

  final List _list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].toList();

  @override
  State<StatefulWidget> createState() => _LongPressDraggable_RoqState();
}

class _LongPressDraggable_RoqState extends State<LongPressDraggable_Roq> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GridView.count(
            childAspectRatio: 1.5,
            crossAxisCount: 3,
            children: _renderWidget(),
            padding: EdgeInsets.only(top: 10),
          ),
        ),
      ],
    );
  }

  List<Widget> _renderWidget() {
   // final List list = List<Widget>();  Error pre-null saftu
    var list= <Widget>[];           // Always the recommended way.
    //  Or ===> var list = List.filled(1, 0); // Not filled with `null`s.
   // Or ====> var list = List<Widget>.empty();
    for (int i = 0; i < widget._list.length; i++) {
      list.add(_buildDragWidget(i));
    }
    return list;
  }

  Widget _buildDragWidget(int index) {
    return LongPressDraggable(
      data: index,
      feedbackOffset: Offset(0, 0),
      // axis: Axis.vertical,
      child: DragTarget<int>(
        onAccept: (data) {
          print('accept index $data');
          setState(() {
            final temp = widget._list[data];
            widget._list.remove(temp);
            widget._list.insert(index, temp);
          });
        },
        onWillAccept: (data) {
          print("current index: $index, on will accept $data");
          return true;
        },
        onLeave: (data) {
          print('index $index , leave $data');
        },
        builder: (context, data, rejects) {
          print('builder = $data,  rejects= $rejects');
          return Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Text('index = ${widget._list[index]}'),
          );
        },
      ),
      feedback: SizedBox(
        width: 80,
        height: 40,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Text(
            'index=${widget._list[index]}',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
      onDragCompleted: () {
        print('onDragCompleted');
      },
      onDragEnd: (details) {
        print(
            'onDragEnd ${details.wasAccepted} ${details.velocity} ${details.offset}');
      },
      onDragStarted: () {
        print('onDragStarted');
      },
      // // Replace the widget at the original position when drag
      // childWhenDragging: Center(
      //   child: Icon(
      //     Icons.ac_unit,
      //     color: Colors.redAccent,
      //   ),
      // ),
    );
  }
}


