import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';


/////////////////////////////// Main Class //////////////////////
class DataTable_Widget_Roq extends StatelessWidget {
  const DataTable_Widget_Roq({Key? key}) : super(key: key);

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

            buildText_funroq("Example 1:Baisc DataTable Widget"),
        Flexible( fit: FlexFit.tight, child:DataTable_Roq_Ex1()),
            buildText_funroq("Example 2:DataTable With onSort Methode"),
        Flexible( fit: FlexFit.tight, child:DataTable_Widget_RoqEx2()),

          ],

        ),
      ),
    );
  }
}
////////////////////////////////// DataTable Exampl1 ////////////////////
class DataTable_Roq_Ex1 extends StatefulWidget {
  @override
  _DataTable_Roq_Ex1state createState() => _DataTable_Roq_Ex1state();
}

class _DataTable_Roq_Ex1state extends State<DataTable_Roq_Ex1> {
  @override
  Widget build(BuildContext context) {
    return  ListView(children: <Widget>[
            Center(
                child: Text(
                  'People-Chart',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'ID',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Profession',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Ruqaih Salman')),
                  DataCell(Text('Doctor')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('Jory Salman')),
                  DataCell(Text('Student')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('Joan Salman')),
                  DataCell(Text('Child')),
                ]),
                DataRow(cells: [
                  DataCell(Text('15')),
                  DataCell(Text('Elias Salman')),
                  DataCell(Text('Scientist')),
                ]),
              ],
            ),
          ]

    );
  }
}
////////////////////////////////// DataTable Exampl2 ////////////////////
class DataTable_Widget_RoqEx2 extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTable_Widget_RoqEx2> {
  /// True since we want our list to be in ascending order initially
  bool sort = true;

  List<int> num = [1, 2, 3, 4, 5, 6];
  List<String> listItems = [
    'Grocries',
    'Electronics',
    'Clothes',
    'Office Supplies',
    'Veggies',
    'Dairy'
  ];

  /// Method called when the header of 1st column is clicked
  onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        /// Sort the list in ascending order
        num.sort((a, b) => a.compareTo(b));
        listItems = listItems.reversed.toList();
      } else {
        /// Sort the list in descending order
        num.sort((b, a) => a.compareTo(b));
        listItems = listItems.reversed.toList();
      }
    }
  }

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
       Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          /// To make the datatable take all the available space
          Expanded(
            /// DataTable wrapped inside Scroll View for smaller devices
            /// or landscape view
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                sortColumnIndex: 0,
                sortAscending: sort,
                columns: [
                  DataColumn(
                      label: Text('S.No'),
                      numeric: true,

                      /// Triggered when you click the column header
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          /// To control the value of "sortAscending" for the
                          /// DataTable
                          sort = !sort;
                        });

                        /// Call the onSort method with logic to sort both
                        /// the columns together
                        onSort(columnIndex, ascending);
                      }),
                  DataColumn(label: Text('Items')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('${num[0]}')),
                      DataCell(Text('${listItems[0]}')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('${num[1]}')),
                      DataCell(Text('${listItems[1]}')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('${num[2]}')),
                      DataCell(Text('${listItems[2]}')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('${num[3]}')),
                      DataCell(Text('${listItems[3]}')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('${num[4]}')),
                      DataCell(Text('${listItems[4]}')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('${num[5]}')),
                      DataCell(Text('${listItems[5]}')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],

    );
  }
}
