import 'package:flutter/material.dart';

class WillPopScope_Roq extends StatefulWidget {

  @override
  _WillPopScope_RoqState createState() => _WillPopScope_RoqState();

  const WillPopScope_Roq();
}

class _WillPopScope_RoqState extends State<WillPopScope_Roq> {
  int last = 0;
  bool flag = true;

  Future<bool> _onWillPopDialog() async{
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }

  Future<bool> _onWillPopClick() {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (now - last > 1000) {
      last = DateTime.now().millisecondsSinceEpoch;
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: flag ? _onWillPopDialog : _onWillPopClick,
      child: Column(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Text('Use a popup?'),
                Switch(
                  value: flag,
                  onChanged: (v) {
                    setState(() => flag = v);
                  },
                ),
                Text('Listen to the Back button'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


