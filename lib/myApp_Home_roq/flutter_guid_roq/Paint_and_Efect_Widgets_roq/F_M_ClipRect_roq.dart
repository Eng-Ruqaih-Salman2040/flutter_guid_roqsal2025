import 'package:flutter/material.dart';
import '../../../myApp_Data_Settings_roq/Utils_roq.dart';

/*import '../Ads.dart';
import '../Code.dart';
import '../CodeScreen.dart';*/

class ClipRRect_Roq extends StatefulWidget {

  @override
  _ClipRRect_RoqState createState() => _ClipRRect_RoqState();

  const ClipRRect_Roq({Key? key}) : super(key: key);
}

class _ClipRRect_RoqState extends State<ClipRRect_Roq> {
  var _value = 50.0;

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
          'ClipRRect',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
     /*   actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.clipRrectCode),
              ),
            ),
          )
        ],*/
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(12),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Container(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(_value),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        child: FlutterLogo(
                          //colors: Colors.lightBlue,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Slide the slider widget to change the value of radius\n'
                          'to observe changes on borders of the widget below',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: Utils.ubuntuRegularFont),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Slider(
                  value: _value,
                  activeColor: Colors.lightBlue,
                  inactiveColor: Colors.lightBlue[50],
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  label: '${_value.round()}',
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              const Text('Drag to change value of Radius'),
            ],
          ),
        ),
      ]),
    );
  }
}
