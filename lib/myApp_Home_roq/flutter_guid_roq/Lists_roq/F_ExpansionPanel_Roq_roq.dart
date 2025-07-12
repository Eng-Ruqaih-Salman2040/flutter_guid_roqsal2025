import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';

/////////////////////////////// Main Class /////////////////////
class ExpansionPanelList_Widget_Roq extends StatefulWidget {
  const ExpansionPanelList_Widget_Roq({Key? key}) : super(key: key);

  @override
  _ListView_Builder_Widget_roqState createState() =>
      _ListView_Builder_Widget_roqState();
}

class _ListView_Builder_Widget_roqState
    extends State<ExpansionPanelList_Widget_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ExpansionPanelList',
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
            buildText_funroq("Example 1:ExpansionPanelList Widget "),
        Flexible( fit: FlexFit.tight, child: ExpansionPanel_Exroq1()),
            buildText_funroq("Ex2: ListView.separated Widget "),
            Flexible( fit: FlexFit.tight, child:ExpansionPanel_Exroq2()),
          ],
        ),
      ),
    );
  }
}
///////////////////////////// Example 2 ////////////////////////////
class ExpansionPanel_Exroq2 extends StatefulWidget {
  @override
  _exppanellistState createState() => _exppanellistState();
}

class _exppanellistState extends State<ExpansionPanel_Exroq2> {
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ExpansionPanelList(
            expansionCallback: (i, isOpen) {
              setState(() {
                if (index == i)
                  index = -1;
                else
                  index = i;
              });
            },
            animationDuration: Duration(seconds: 1),
            dividerColor: Colors.teal,
            elevation: 2,
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 0 (Header Tap Enabled)"),
                  );
                },
                canTapOnHeader: true,
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 0'),
                ),
                isExpanded: index == 0,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 1"),
                  );
                },
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 1'),
                ),
                isExpanded: index == 1,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 2 (Header Tap Enabled)"),
                  );
                },
                canTapOnHeader: true,
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 2'),
                ),
                isExpanded: index == 2,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 3"),
                  );
                },
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 3'),
                ),
                isExpanded: index == 3,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 4"),
                  );
                },
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 4'),
                ),
                isExpanded: index == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//////////////////////////// Example 1 ////////////////////////
class ExpansionPanel_Exroq1 extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanel_Exroq1> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                dividerColor: Colors.red,
                expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
                elevation: 1,
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          itemData[index].headerItem,
                          style: TextStyle(
                            color: itemData[index].colorsItem,
                            fontSize: 18,
                          ),
                        ),
                      );
                    },
                    body: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemData[index].discription,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    isExpanded: itemData[index].expanded,
                  )
                ],
                expansionCallback: (int item, bool status) {
                  setState(() {
                    itemData[index].expanded = !itemData[index].expanded;
                  });
                },
              ),
            );
          },
        ),

    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Android',
      discription:
      "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.",
      colorsItem: Colors.green,
    ),
    ItemModel(
      headerItem: 'iOS',
      discription:
      "iOS is a mobile operating system created and developed by Apple Inc. exclusively for its hardware.",
      colorsItem: Colors.grey,
    ),
    ItemModel(
      headerItem: 'Windows',
      discription:
      "Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. ",
      colorsItem: Colors.blue,
    ),
    ItemModel(
      headerItem: 'Linux',
      discription:
      "Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system.",
      colorsItem: Colors.orange,
    ),
  ];
}
class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;

  ItemModel({
    this.expanded = false,

    required this.headerItem,
    required this.discription,
    required this.colorsItem,
  });
}
