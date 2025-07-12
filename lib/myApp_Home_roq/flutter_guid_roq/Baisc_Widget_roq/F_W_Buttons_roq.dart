import 'package:flutter/material.dart';

import '../../../Updated_plugins_roq/fluttertoast_roq2024.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class Buttons_Widget_roq extends StatelessWidget {
  const Buttons_Widget_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showToast(String but_roq) => Fluttertoast.showToast(
      msg: but_roq,
      toastLength: Toast.LENGTH_SHORT,
    );

    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('IconButton tapped'),
        duration: Duration(milliseconds: 500),
      ),
    );
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: <Widget>[
        Column(
          children: <Widget>[
            const Text(
                'Raised buttons add dimension to mostly flat layouts. They '
                    'emphasize functions on busy or wide spaces.'),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _showSnack,
                  child: const Text('ElevatedButton'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('disabled-ElevatedButton'),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: <Widget>[
            const Text('A flat button displays an ink splash on press '
                'but does not lift. Use flat buttons on toolbars, in dialogs '
                'and inline with padding'),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed:() => _showToast('TextButton tapped'),
                  child: const Text('TextButton'),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text('disabled-TextButton'),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: <Widget>[
            const Text(
                'Outline buttons become opaque and elevate when pressed. They '
                    'are often paired with raised buttons to indicate an '
                    'alternative, secondary action.'),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: ()=>_showToast('OutlinedButton tapped'),
                  child: const Text('OutlineButton'),
                ),
                const OutlinedButton(
                  onPressed: null,
                  child: Text('OutlineButton'),
                )
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: <Widget>[
            const Text(
                'Tooltips are short identifying messages that briefly appear '
                    'in response to a long press. Tooltip messages are also used '
                    'by services that make Flutter apps accessible, like screen '
                    'readers.'),
            Center(
              child: IconButton(
                iconSize: 32.0,
                icon: const Icon(Icons.call),
                tooltip: 'Place a phone call',
                onPressed: _showSnack,
              ),
            )
          ],
        ),

        //For Ripple Effect Ink Well is used
        const Divider(),
        Column(
        children: <Widget>[
    const Text('A Material button is flutter widgets implementing Material Design.'),
        Material(
          //  needed
          color: Colors.orange,
          child: InkWell(
            onTap:  ()=>_showToast('Material Button tapped'),
            child: Container(width: 80.0, height: 40.0),
          ),
        )],),
        const Divider(),
        Column(
          children: [const Text('A flat button displays an ink splash on press '
              'but does not lift. Use flat buttons on toolbars, in dialogs '
              'and inline with padding'),
            RawMaterialButton(
              child: Icon(
                Icons.play_arrow,
                color: Colors.limeAccent,
              ),
              onPressed:  ()=>_showToast('RawMaterialButton tapped'),
              shape: CircleBorder(),
              elevation: 2,
              splashColor: Colors.transparent,
              fillColor: Colors.deepPurpleAccent,
              highlightColor: Colors.transparent,
            ),
          ],
        ),
        const Divider(),
        Column(
          children: [
            const Text('A flat button displays an ink splash on press '
                'but does not lift. Use flat buttons on toolbars, in dialogs '
                'and inline with padding'),
            BackButton(
              onPressed: ()=>_showToast('BackButton tapped'),
            ),
          ],
        ),
        const Divider(),
        Column(
          children: [
            const Text('A flat button displays an ink splash on press '
                'but does not lift. Use flat buttons on toolbars, in dialogs '
                'and inline with padding'),
            CloseButton(
              onPressed: ()=>_showToast('CloseButton tapped'),
            ),
          ],
        )


],
    );
  }
}
