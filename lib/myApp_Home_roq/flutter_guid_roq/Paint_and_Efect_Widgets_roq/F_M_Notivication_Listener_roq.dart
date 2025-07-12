import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';

/*import '../Code.dart';
import '../CodeScreen.dart';
import '../utils.dart';*/

class NotificationListener_Roq extends StatefulWidget {
  @override
  _NotificationListener_RoqState createState() => _NotificationListener_RoqState();

  const NotificationListener_Roq({Key? key}) : super(key: key);
}

class _NotificationListener_RoqState extends State<NotificationListener_Roq> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NotificationListener',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: Utils.ubuntuRegularFont),
        ),
      /*  actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.notificationListenerCode),
              ),
            ),
          )
        ]*/
      ),
      body: Center(
        child: NotificationListener<ColorNotification>(
          child: ChangeColor(
            bgColor: color,
          ),

          ///Notification is received here whenever
          onNotification: (notification) {
            setState(() {
              color = notification.color;
            });
            return true;
          },
        ),
      ),
    );
  }
}

///Child widget that will initiate a change to bubble up the parent
class ChangeColor extends StatelessWidget {
  final Color bgColor;

  ChangeColor({required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        //textColor: Colors.white,
        style: TextButton.styleFrom(
       backgroundColor : bgColor,
        ),
        child: Text("Click to change my color"),
        onPressed: () {
          final randomColor = Utils.getRandomColor();
          ColorNotification(color: randomColor)..dispatch(context);
        },
      ),
    );
  }
}

class ColorNotification extends Notification {
  final Color color;

  const ColorNotification({required this.color});
}
