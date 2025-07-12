import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:csv/csv.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';


/*import 'package:flutter_widget_guide/utils.dart';

import '../Ads.dart';
import '../Code.dart';
import '../CodeScreen.dart';*/

class Assets_Files_Roq extends StatefulWidget {
  const Assets_Files_Roq({Key? key}) : super(key: key);

  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<Assets_Files_Roq> {
  int count = 0;
  int _widgetIndex = 0;
  Color _imageColor = Colors.blue;

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Files in assets',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        /*     actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.indexedStackCode),
              ),
            ),
          )
        ],*/
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _widgetIndex==0? Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Text(
              "Text files (which have .txt extension) are widely used to store information persistently, from numerical data to long text.",
              style: TextStyle(
                  color:Colors.black87, //Theme.of(context).bottomAppBarColor,
                  fontSize: 14.0,
                  fontFamily: Utils.ubuntuRegularFont),
              textAlign: TextAlign.center,
            ),
          ) :_widgetIndex==1
              ? Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Text(
              "Text files (which have .txt extension) are widely used to store information persistently, from numerical data to long text.",
              style: TextStyle(
                  color:Colors.black87, //Theme.of(context).bottomAppBarColor,
                  fontSize: 14.0,
                  fontFamily: Utils.ubuntuRegularFont),
              textAlign: TextAlign.center,
            ),
          ): Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Text(
    "This is a short and straight-to-the-point example that shows you how to read local JSON files in Flutter.",
     style: TextStyle(
                  color:Colors.black87, //Theme.of(context).bottomAppBarColor,
                  fontSize: 14.0,
                  fontFamily: Utils.ubuntuRegularFont),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    /// 3 widgets stacked (Index 0, 1 & 2)
                    /// State will be preserved while switching
                    IndexedStack(
                      index: _widgetIndex,
                      children: <Widget>[
                        Container(
                          width: 300,
                          height: 300,
                          //color: Colors.blue,
                          child: Column(
                              children: [

                                buildText_funroq("Example1:Txt File in assets "),
                                Flexible(child: Txt_FileAssesst_RW_Roq()),]
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          //color: Colors.red,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              buildText_funroq("Example2:CSV File in assets "),
                              Flexible(child: CSV_FileAssesst_RW_Roq()),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          color: Colors.white,
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                buildText_funroq("Example3:JSON File in assets "),
                                Flexible(child: JSON_FileAssesst_RW_Roq()),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ]
              )
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () =>
                _widgetIndex == 0 ? null : setState(() => _widgetIndex = 0),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _widgetIndex == 0 ? Colors.grey : Colors.blue,
                ),
                child: const Text(
                  'txt file',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () =>
                _widgetIndex == 1 ? null : setState(() => _widgetIndex = 1),
                style:ElevatedButton.styleFrom(backgroundColor:
                _widgetIndex == 1 ? Colors.grey : Colors.blue,
                //textColor: Colors.white,
    ),
                child: Text("CSV file"),
              ),
              ElevatedButton(
                onPressed: () =>
                _widgetIndex == 2 ? null : setState(() => _widgetIndex = 2),
    style:ElevatedButton.styleFrom(backgroundColor:
    _widgetIndex == 2 ? Colors.grey : Colors.blue,
                //textColor: Colors.white,
                ),
                child: Text("JSON file"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

/////////////////////////////////// File.txt in assets ////////////////////

class Txt_FileAssesst_RW_Roq extends StatefulWidget {
  const Txt_FileAssesst_RW_Roq ({Key? key}) : super(key: key);
  @override
  _HomeTxtPageState createState() => _HomeTxtPageState();
}

class _HomeTxtPageState extends State<Txt_FileAssesst_RW_Roq> {
  String _data = 'null';

  // This function is triggered when the user presses the  button
  Future<void> _loadData() async {
    final String _loadedData = await rootBundle.loadString('res/assets/Roq_file.txt');
    setState(() {
      _data = _loadedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(

          shrinkWrap: true,
          children: [
            Container(
                child: Text(_data != 'null' ? _data : 'Nothing to show',
                )),
            ElevatedButton(onPressed: _loadData, child: Text("Load Data"))
          ],



        ),
      );
  }
}
///////////////////////////////////// File.csv in assets ///////////////////


class CSV_FileAssesst_RW_Roq extends StatefulWidget {
  @override
  _HomeCSVPageState createState() => _HomeCSVPageState();
}

class _HomeCSVPageState extends State<CSV_FileAssesst_RW_Roq> {
  List<List<dynamic>> _data_roq = [];

  // This function is triggered when the floating button is pressed
  void _loadCSV() async {
    final String _rawData_roq = await rootBundle.loadString("res/assets/Roq_csv_file.csv");
    List<List<dynamic>> _listData_roq = CsvToListConverter().convert(_rawData_roq);
    setState(() {
      _data_roq = _listData_roq;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Flexible(
          child: ListView.builder(
            itemCount: _data_roq.length,
            itemBuilder: (_, index_roq) {
              return Card(
                margin: const EdgeInsets.all(3),
                color: index_roq == 0 ? Colors.amber : Colors.white,
                child: ListTile(
                  leading: Text(_data_roq[index_roq][0].toString()),
                  title: Text(_data_roq[index_roq][1]),
                  trailing: Text(_data_roq[index_roq][2].toString()),
                ),
              );
            },
          ),
        ),
        ElevatedButton(onPressed: _loadCSV, child: Icon(Icons.add))
      ],

    );
  }
}
///////////////////////////////////// File.json in assets ///////////////////


class JSON_FileAssesst_RW_Roq extends StatefulWidget {
  const JSON_FileAssesst_RW_Roq({ Key? key}) : super(key: key);

  @override
  _HomeJSONPageState createState() => _HomeJSONPageState();
}

class _HomeJSONPageState extends State<JSON_FileAssesst_RW_Roq> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('res/assets/Roq_Json_file.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [
        ElevatedButton(
          child: const Text('Load Data'),
          onPressed: readJson,
        ),

        // Display the data loaded from sample.json
        _items.isNotEmpty
            ? Expanded(
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Text(_items[index]["id"]),
                  title: Text(_items[index]["name"]),
                  subtitle: Text(_items[index]["description"]),
                ),
              );
            },
          ),
        )
            : Container()
      ],



    );
  }
}
