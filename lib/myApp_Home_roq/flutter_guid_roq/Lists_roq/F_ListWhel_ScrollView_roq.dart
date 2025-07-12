import 'package:flutter/material.dart';
import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';
/////////////////////////////// Main Class /////////////////////
class ListWheelScrollView_Widget_Roq extends StatefulWidget {
  const ListWheelScrollView_Widget_Roq({Key? key}) : super(key: key);

  @override
  _ListWheelScrollView_roqState createState() =>
      _ListWheelScrollView_roqState();
}

class _ListWheelScrollView_roqState
    extends State<ListWheelScrollView_Widget_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ListWheelScrollView',
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

            buildText_funroq("Ex1:Baisc ListWheelScrollView "),
            Expanded(child: ListWheelScrollView_Widget_RoqEx1()),
            buildText_funroq("Ex2:ListWheelScrollView.useDelegate "),
            Expanded(child: ListWheelScrollView_Widget_RoqEx2()),
          ],

        ),
      ),
    );
  }
}
///////////////////////////////  Example 1  : ListWheelScrollView_Widget //////////////////////////
class ListWheelScrollView_Widget_RoqEx1 extends StatefulWidget {
  @override
  _ListWheelScrollViewWidgetState createState() =>
      _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollView_Widget_RoqEx1> {
  ///Initial Slider widget value
  var _value = 0.0;

  final List<Widget> entries = List<Widget>.generate(
    15,
        (i) => Card(
      color: Utils.getRandomColor(),
      child: Center(
        child: Text(
          "Item ${i + 1}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
            flex: 10,
            child: ListWheelScrollView(
              children: entries,
              itemExtent: 100,
              offAxisFraction: _value,
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Text(
                "Drag to change offAxisFraction value",
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Slider(
              value: _value,

              ///Color for active side of Slider
              activeColor: Colors.lightBlue,

              ///Color for inactive side of Slider
              inactiveColor: Colors.lightBlue[50],

              ///Minimum value of the slider
              min: -1.0,

              ///Maximum value of the slider
              max: 1.0,

              ///No.Of divisions from min to max value on the Slider
              divisions: 100,

              ///Value indicator above the slider
              label: "${_value.toStringAsFixed(2)}",
              onChanged: (double value) {
                setState(
                      () {
                    _value = value;
                  },
                );
              },
            ),
          ),
        ],
    );
  }
}
///////////////////////////////  Example 2  : ListWheelScrollView.useDelegate //////////////////////////
class ListWheelScrollView_Widget_RoqEx2 extends StatefulWidget {
  const ListWheelScrollView_Widget_RoqEx2({Key? key}) : super(key: key);

  @override
  _ListWheelViewExampleState createState() => _ListWheelViewExampleState();
}

class _ListWheelViewExampleState extends State<ListWheelScrollView_Widget_RoqEx2> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 75,
      childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
            if (index < 0 || index > 8) {
              return null;
            }
            return ListTile(
              leading: Text(
                "$index",
                style: TextStyle(fontSize: 50),
              ),
              title: Text("Title $index"),
              subtitle: Text('Description here'),
            );
          }),
    );
  }
}
