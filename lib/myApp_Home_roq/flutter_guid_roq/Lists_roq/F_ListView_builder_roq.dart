import 'package:flutter/material.dart';
import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';

/////////////////////////////// Main Class /////////////////////
class ListView_Builder_Widget_roq extends StatefulWidget {
  const ListView_Builder_Widget_roq({Key? key}) : super(key: key);

  @override
  _ListView_Builder_Widget_roqState createState() =>
      _ListView_Builder_Widget_roqState();
}

class _ListView_Builder_Widget_roqState
    extends State<ListView_Builder_Widget_roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ListView',
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            children: [
            buildText_funroq("Ex1:Baisc ListView.builder Widget "),
        Expanded(child: Listview_builder_Roq_Ex(products_roq: List<String>.generate(500, (i) => "Product List_roq: $i"))),
        buildText_funroq("Ex2: ListView.separated Widget "),
          Expanded(child: ListViewseparated_Widget_roq()),
        ],
    ),
      ),
    );
  }
}

///////////////////////////// Listview_builder_Roq_Ex ////////////
class Listview_builder_Roq_Ex extends StatelessWidget {
  final List<String> products_roq;

  const  Listview_builder_Roq_Ex({Key? key, required this.products_roq}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //simple Way 1
        /* itemCount:100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Ruqaih Salman ${index}'),
              leading: Icon(Icons.settings),
            );*/

        itemCount: products_roq.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${products_roq[index]}'),
          );
        },


    );
  }
}


/////////////////////// ListView_separated_Widget_roq Example ////////////
class ListViewseparated_Widget_roq extends StatefulWidget {
  const ListViewseparated_Widget_roq({Key? key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewseparated_Widget_roq> {
  final List<String> entries = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 13',
    'Item 14',
    'Item 15'
  ];

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
      itemCount: entries.length,
      reverse: false,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue[500],
          child: ListTile(
            leading: GestureDetector(
              onTap: () {},
              child: Container(
                width: 48,
                height: 48,
                padding: EdgeInsets.symmetric(vertical: 4.0),
                alignment: Alignment.center,
                child: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            title: Text(
              "Person ${index + 1}",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "${entries[index]}",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => null,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(
            thickness: 2,
          ),

    );
  }
}