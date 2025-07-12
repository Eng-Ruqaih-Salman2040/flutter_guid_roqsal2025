import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home:SnackBar_Widget_roq()));



class SnackBar_Widget_roq extends StatefulWidget {
  const SnackBar_Widget_roq({Key? key,}) : super(key: key);

  @override
  State<SnackBar_Widget_roq> createState() => _SnackBar_class_roqState();
}

class _SnackBar_class_roqState extends State<SnackBar_Widget_roq> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Text('SnackBar'),
    ),
    body:
    Center(
      child: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Show simple SnackBar'),

                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(milliseconds: 500),
                        content: Text("Simple SnackBar"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Show elevated SnackBar'),

                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(milliseconds: 500),
                        elevation: 6.0,
                        behavior: SnackBarBehavior.floating,
                        content: Text("Elevated SnackBar"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Show custom layout SnackBar'),

                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(milliseconds: 500),
                        elevation: 6.0,
                        behavior: SnackBarBehavior.floating,
                        content: Row(
                          children: <Widget>[
                            Icon(Icons.thumb_up),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: Text("Hello!"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final SnackBar snackBar_roq = SnackBar(
                content: const Text('Do you want to delete the item!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              //////////////////////////////////////
              ScaffoldMessenger.of(context).showSnackBar(snackBar_roq);
              //  Or   Scaffold.of(context).showSnackBar(snackBar_roq);
            },
            child: const Text('Show SnackBar with acton'),
          ),
        ],
      ),
    )
    );
  }
}