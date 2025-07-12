import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';

/*import '../Ads.dart';
import '../Code.dart';
import '../CodeScreen.dart';*/

class Semantics_Roq extends StatefulWidget {

  @override
  _Semantics_RoqState createState() => _Semantics_RoqState();

  const Semantics_Roq({Key? key}) : super(key: key);
}

class _Semantics_RoqState extends State<Semantics_Roq> {

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
          'Semantics',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
    /*    actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.semanticsCode),
              ),
            ),
          )
        ],*/
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
                Semantics(
                  child: FlutterLogo(
                    size: 250,
                  ),
                  label: "Flutter Logo",
                  enabled: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "If you enable Talkback feature from your devices Accessibility settings"
                  "and click on the Flutter Logo, the device will announce whatever you have"
                  "written on the label tag in Semantics widget",
              style: TextStyle(
                  fontFamily: Utils.ubuntuRegularFont, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
