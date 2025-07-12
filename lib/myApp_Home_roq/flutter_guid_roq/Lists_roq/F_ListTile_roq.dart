import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';


class ListTile_widget_roq extends StatefulWidget {
  const ListTile_widget_roq({Key? key}) : super(key: key);

  @override
  State<ListTile_widget_roq> createState() => _ListTile_widget_roqState();
}

class _ListTile_widget_roqState extends State<ListTile_widget_roq> {
  bool  wifi_SW=false;
  @override
  Widget build(BuildContext context) {
    final List<Widget> listTiles = <Widget>[
      buildText("Tile 1: basic"),
      const ListTile(
        title: Text('ListTile with only title '),
      ),
      buildText("Tile 2: with title/leading/subtitle widgets"),
      const ListTile(
        leading: Icon(Icons.mode_comment_outlined),
        title: Text('Easy mode'),
        subtitle: Text('Easy mode to help you to use your phone more easily with a simple home screen'),
        //trailing: Switch(value: false, onChanged:null),
      ),
      buildText("Tile 3: with title/leading/subtitle/trailing widgets"),
      ListTile(
          leading: Icon(Icons.wifi),
          title: Text('Wi-Fi'),
          subtitle: Text('Tap to configure'),
          trailing: Switch(value: wifi_SW, onChanged: (bool? value) {
            setState(() {
              wifi_SW = value!;
            });
          },
          )
      ),
      buildText("Tile 4: 3 lines"),
      const ListTile(
        title: Text('ListTile with more one line'),
        isThreeLine: true,
        subtitle: Text('subtitle of tile 4'),
      ),
      buildText('Tile 5: dense'),
      const ListTile(
        title: Text('ListTile with dense'),
        dense: true,
      ),
      buildText("Tile5: tile with badge"),
      ListTile(
        title: const Text('ListTile with badge'),
        subtitle: const Text('(This uses the badges package)'),
        trailing: badge.Badge(
          badgeContent: const Text('3'),
          child: const Icon(Icons.message),
        ),
      ),
    ];
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    return ListView(children: listTiles);
  }

  buildText(String text_roq) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Divider(height: 10,thickness: 3,),
            Text("$text_roq",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],), ),
            const Divider(height: 10,thickness: 3,),
          ],
        ),
      );

  }
}
