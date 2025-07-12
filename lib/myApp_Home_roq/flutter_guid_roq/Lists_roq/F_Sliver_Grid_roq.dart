import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';

/*import 'package:flutter_widget_guide/utils.dart';

import '../Code.dart';
import '../CodeScreen.dart';*/

class SliverGrid_Widget_Roq extends StatelessWidget {
  const SliverGrid_Widget_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SliverGrid',
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
      body: CustomScrollView(
        slivers: <Widget>[
          ///First sliver is the App Bar
          SliverAppBar(
            ///Properties of app bar
            backgroundColor: Theme.of(context).primaryColor,
            floating: true,
            pinned: true,
            expandedHeight: 200.0,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "SliverAppBar",
                style: TextStyle(
                    //2025--------------------color: Theme.of(context).backgroundColor,
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
           /* actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeScreen(code: Code.sliverGridCode),
                  ),
                ),
              )
            ],*/
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              ///no.of items in the horizontal axis
              crossAxisCount: 4,
            ),

            ///Lazy building of list
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                /// To convert this infinite list to a list with "n" no of items,
                /// uncomment the following line:
                /// if (index > n) return null;
                return listItem(
                    Utils.getRandomColor(), "Sliver Grid item:\n$index");
              },

              /// Set childCount to limit no.of items
              /// childCount: 100,
            ),
          )
        ],
      ),
    );
  }

  Widget listItem(Color color, String title) => Container(
    height: 100.0,
    color: color,
    child: Center(
      child: Text(
        "$title",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
            fontFamily: Utils.ubuntuRegularFont),
      ),
    ),
  );
}
