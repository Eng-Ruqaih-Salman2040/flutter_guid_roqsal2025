import 'package:flutter/material.dart';

void main() { runApp(PopupButton_Widget_roq());}

class PopupButton_Widget_roq extends StatefulWidget {
  const PopupButton_Widget_roq({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PopupButton_Widget_roq> {
  Choice _selectedOption = choices[0];
  late String _btn3SelectedVal;
  static const menuItems = <String>[
    'One',
    'Two',
    'Three',
    'Four',
  ];
  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems
      .map(
        (String value) => PopupMenuItem<String>(
      value: value,
      child: Text(value),
    ),
  )
      .toList();

  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ex2:  PopupMenu in AppBar ----->'),
          actions: <Widget>[
            ////////////////////// Add PopupMenu Button in AppBar /////
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.skip(0).map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.name),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Column(
          children: [
            buildText(" Ex1 : The Result of selected item from Popupmenu in an AppBar :"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ChoiceCard(choice: _selectedOption),
            ),
            buildText(" Ex2 : Add Popup menu button in a body and show selected item in SnackBar:"),
            Popup_menu_in_body_ex1_funroq(context),
          ],
        ),
      ),
    );
  }

  ListTile Popup_menu_in_body_ex1_funroq(BuildContext context) {
    return ListTile(
            title: const Text('Popup menu button:'),
            trailing: PopupMenuButton<String>(
              onSelected: (String newValue) {
                _btn3SelectedVal = newValue;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(_btn3SelectedVal),
                  ),
                );
              },
              itemBuilder: (BuildContext context) => _popUpMenuItems,
            ),
          );
  }
  buildText(String text_roq) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Divider(height: 10,thickness: 3,),
            Text("$text_roq",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],), ),
            Divider(height: 10,thickness: 3,),
          ],
        ),
      );

  }
}

class Choice {
  const Choice({required this.name, required this.icon});
  final String name;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(name: 'Wi-Fi', icon: Icons.wifi),
  const Choice(name: 'Bluetooth', icon: Icons.bluetooth),
  const Choice(name: 'Battery', icon: Icons.battery_alert),
  const Choice(name: 'Storage', icon: Icons.storage),
];

class ChoiceCard extends StatelessWidget {

   ChoiceCard({Key? key, required this.choice}) : super(key: key);

  final Choice choice;   // Or final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.displayLarge;
    late String _btn3SelectedVal;
    return Card(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 115.0, color: textStyle!.color),
            Text(choice.name, style: textStyle),
            ////////////////////// Add Popup menu button in AppBar

          ],
        ),
      ),
    );
  }
}
