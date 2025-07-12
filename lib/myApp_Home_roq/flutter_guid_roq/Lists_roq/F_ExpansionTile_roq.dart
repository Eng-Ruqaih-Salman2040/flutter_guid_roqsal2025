import 'package:flutter/material.dart';
import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';
class ExpansionTile_Widget_roq extends StatefulWidget {
  const ExpansionTile_Widget_roq({Key? key}) : super(key: key);

  @override
  _ExpansionTile_Widget_roqState createState() =>
      _ExpansionTile_Widget_roqState();
}

class _ExpansionTile_Widget_roqState
    extends State<ExpansionTile_Widget_roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ExpansionTile',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        /* actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.listViewCode),
              ),
            ),
          )
        ],*/
      ),
      body:  Column(
        children: [
          buildText_funroq("Example 1: A single ExpansionTile"),
          Expanded(child: ListView(
            children: [
              ExpansionTile_Roq_Ex1(),
            ],
          )),
          buildText_funroq("Example 2:ExpansionTile and ListView.builder "),
          Expanded(child: ExpansionTile_Roq_Ex2()),
        ],

      ),
    );
  }
}
////////////////////////////      Example 1 ////////////////////////
class ExpansionTile_Roq_Ex1  extends StatelessWidget {
  const ExpansionTile_Roq_Ex1 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const ExpansionTile(
      title: Text('Colors'),
      subtitle: Text('Expand this tile to see its contents'),
      // Contents
      children: [
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text('Blue')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text('Red')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            title: Text('Amber')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
            ),
            title: Text('Pink')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text('Green')),
      ],

    );
  }
}


////////////////////////////////////// Example 2 ///////////////////

class ExpansionTile_Roq_Ex2 extends StatelessWidget {
  const ExpansionTile_Roq_Ex2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          EntryItem(data[index]),
      itemCount: data.length,


    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Item A0.1'),
          Entry('Item A0.2'),
          Entry('Item A0.3'),
        ],
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
  Entry(
    'Chapter C',
    <Entry>[
      Entry('Section C0'),
      Entry('Section C1'),
      Entry(
        'Section C2',
        <Entry>[
          Entry('Item C2.0'),
          Entry('Item C2.1'),
          Entry('Item C2.2'),
          Entry('Item C2.3'),
        ],
      ),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}



