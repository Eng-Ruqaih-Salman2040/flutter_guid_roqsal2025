import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';



/*import '../Code.dart';
import '../CodeScreen.dart';
*/

class Builder_Roq extends StatefulWidget {

  @override
  _Builder_RoqState createState() => _Builder_RoqState();

  const Builder_Roq({Key? key}) : super(key: key);
}

class _Builder_RoqState extends State<Builder_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Builder',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: Utils.ubuntuRegularFont),
        ),
        /*actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.builderCode),
              ),
            ),
          )
        ],*/
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              //color: Colors.blue,
              //textColor: Colors.white,
              child: Text("Click me"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                    Text("I was created using context of a builder and not a scaffold key"),
                    action: SnackBarAction(
                      textColor: Colors.yellow,
                      label: 'OK',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
