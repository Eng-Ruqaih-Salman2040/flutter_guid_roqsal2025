
import 'package:flutter/material.dart';
class Icon_widget_roq extends StatelessWidget {
  const Icon_widget_roq({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Icon Roq App"),
        ),
        body:
        Center(
          child: ListView(

          children: <Widget>[
            const Divider(height: 7,),
            const Text('       Icons without any properties : \n'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.opacity,),
                  Icon(Icons.perm_identity,),
                  Icon(Icons.visibility_off,),
                ],
              ),
            const Divider(height: 7,),
          const Text('        Icons with some properties : \n'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:<Widget> [
                  Icon(
                    Icons.opacity,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.perm_identity,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.visibility_off,
                    size: 50,
                    color: Colors.purple,
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}
