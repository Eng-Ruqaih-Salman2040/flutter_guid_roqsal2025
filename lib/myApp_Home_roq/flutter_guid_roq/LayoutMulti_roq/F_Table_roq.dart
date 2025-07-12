import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';

/*import 'package:flutter_widget_guide/utils.dart';

import '../Ads.dart';
import '../Code.dart';
import '../CodeScreen.dart';*/
/////////////////////////////// Main Class //////////////////////
class Table_Widget_Roq extends StatelessWidget {
  const Table_Widget_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Table',
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
      body:  Padding(
        padding: const EdgeInsets.only(left:8.0,right: 6.0),
        child: Column(
          children: [

            buildText_funroq("Example 1:Table with on Row"),
        Table_Widget_RoqEx1(),
            buildText_funroq("Example 2:Table with multi Row"),
        Table_WidgetRoq_Ex2(),
            buildText_funroq("Example 3:Press the Iconbutton to draw a table border"),
           Expanded(flex:3,child: TableWidget_RoqEx3()),
          ],

        ),
      ),
    );
  }
}
///////////////////////////////////// Example 1 Table with on Row /////////
class Table_Widget_RoqEx1 extends StatelessWidget {
  const Table_Widget_RoqEx1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(2),
            child: Table(
              //defaultColumnWidth: FixedColumnWidth(120.0),
              border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2),
              children: [
                TableRow(children: [
                  TableCell(child: Text('javatpoint',
                    style: TextStyle(fontSize: 14.0),textAlign:
                    TextAlign.center,)),
                  TableCell(  child: Text('Flutter',
                    style: TextStyle(fontSize: 14.0),textAlign:
                    TextAlign.center,)),
                  TableCell(child: Text('Android',
                    style: TextStyle(fontSize: 14.0),textAlign:
                    TextAlign.center,)),
                  TableCell(child: Text('MySQL',
                    style: TextStyle(fontSize: 14.0),textAlign:
                    TextAlign.center,)),
                ]),
              ],
            ),
          ),
        ]
        )

    );

  }
}
///////////////////////////////////// Example 2 Table with multi Rowa//////
class Table_WidgetRoq_Ex2 extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<Table_WidgetRoq_Ex2> {
  @override
  Widget build(BuildContext context) {
    return
      Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(2),
              child: Table(
                //defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                children: [
                  //   --------------- Way 1 ---------------
                  /*TableRow(children: [
                    TableCell(child: Text('javatpoint', style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,)),
                    TableCell(  child: Text('Flutter', style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,)),
                    TableCell(child: Text('Android', style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,)),
                    TableCell(child: Text('MySQL', style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,)),
                  ]),*/


                  TableRow(children: [
                    Column(children: [
                      Text('Website', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Tutorial', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Review', style: TextStyle(fontSize: 20.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('MySQL')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('ReactJS')]),
                    Column(children: [Text('5*')]),
                  ]),
                ],
              ),
            ),
          ])
    );
  }
}


/////////////////////////////////// Example : 3 Table /////////
class TableWidget_RoqEx3 extends StatefulWidget {
  @override
  _TableWidgetState createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget_RoqEx3> {
  bool _isBorderEnabled = false;
  var _actionIcon = Icons.border_all;

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
          children: [
            IconButton(
              icon: Icon(_actionIcon),
              iconSize: 45,
              onPressed: () => setState(() {
                _isBorderEnabled == false
                    ? _isBorderEnabled = true
                    : _isBorderEnabled = false;

                _isBorderEnabled
                    ? _actionIcon = Icons.border_clear
                    : _actionIcon = Icons.border_all;
              }),
            ),
            Table(
              border: _isBorderEnabled
            ? TableBorder.all(
    color: Colors.black,
    style: BorderStyle.solid,
    width: 2)
                : null,

              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              children: <TableRow>[
                ///First table row with 3 children
                TableRow(children: <Widget>[
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.red,
                      width: 48.0,
                      height: 100.0,
                      child: Center(
                        child: Text(
                          "Row 1 \n Element 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.orange,
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Row 1 \n Element 2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.blue,
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Row 1 \n Element 3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                ]),

                ///Second table row with 3 children
                TableRow(children: <Widget>[
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.lightBlue,
                      width: 50.0,
                      height: 48.0,
                      child: Center(
                        child: Text(
                          "Row 2 \n Element 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.green,
                      width: 48.0,
                      height: 48.0,
                      child: Center(
                        child: Text(
                          "Row 2 \n Element 2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      color: Colors.blue,
                      width: 50.0,
                      height: 100.0,
                      child: Center(
                        child: Text(
                          "Row 2 \n Element 3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 6.0,
                              fontFamily: Utils.ubuntuRegularFont),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ],


    );
  }
}
