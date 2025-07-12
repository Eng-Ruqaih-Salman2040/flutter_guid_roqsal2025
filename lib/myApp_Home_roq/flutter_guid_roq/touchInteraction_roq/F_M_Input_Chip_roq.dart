
import 'package:flutter/material.dart';

class InputChip_Roq extends StatefulWidget {

  @override
  _InputChip_RoqState createState() => new _InputChip_RoqState();

  const InputChip_Roq({Key? key}) : super(key: key);
}

class _InputChip_RoqState extends State<InputChip_Roq> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InputChip(
          label: Text(isSelected ? "Selected" : "Select"),
          labelStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.red,
          onSelected: (bool value) {
            setState(() {
              isSelected = value;
            });
          },
          deleteIcon: Icon(
            Icons.cancel,
            color: Colors.white,
          ),
          onDeleted: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Delete clicked",
                ),
                duration: Duration(seconds: 1),
              ),
            );
          },
          selected: isSelected,
          selectedColor: Colors.green,
        ),
      ),
    );
  }
}





class filtrchip extends StatefulWidget {
  @override
  _filtrchipState createState() => new _filtrchipState();
}

class _filtrchipState extends State<filtrchip> {
  var _dataList = [
    'Choice 1',
    'Choice 2',
    'Choice 3',
    'Choice 4',
    'Choice 5',
    'Choice 6',
    'Choice 7',
    'Choice 8'
  ];
  var selected = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataList.length,
      itemBuilder: (BuildContext context, int index) => FilterChip(
        label: Text(_dataList[index]),
        onSelected: (bool value) {
          if (selected.contains(index)) {
            selected.remove(index);
          } else {
            selected.add(index);
          }
          setState(() {});
        },
        selected: selected.contains(index),
        selectedColor: Colors.deepOrange,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
