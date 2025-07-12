import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';



//import '../Ads.dart';

class ShaderMask_Roq extends StatefulWidget {

  @override
  _ShaderMask_RoqState createState() => _ShaderMask_RoqState();

  const ShaderMask_Roq({Key? key}) : super(key: key);
}

class _ShaderMask_RoqState extends State<ShaderMask_Roq> {

  Map<int, Color> color =
  {
    50:Color.fromRGBO(255,255,255, .1),
    100:Color.fromRGBO(255,255,255, .2),
    200:Color.fromRGBO(255,255,255, .3),
    300:Color.fromRGBO(255,255,255, .4),
    400:Color.fromRGBO(255,255,255, .5),
    500:Color.fromRGBO(255,255,255, .6),
    600:Color.fromRGBO(255,255,255, .7),
    700:Color.fromRGBO(255,255,255, .8),
    800:Color.fromRGBO(255,255,255, .9),
    900:Color.fromRGBO(255,255,255, 1),
  };

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
          'ShaderMask',
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
                builder: (context) =>
                    CodeScreen(code: Code.shaderMaskWidgetCode),
              ),
            ),
          )
        ],*/
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ShaderMask(
              shaderCallback: (bounds) => RadialGradient(
                center: Alignment.topLeft,
                radius: 1.0,
                colors: [Colors.yellow, Colors.deepOrange.shade900],
                tileMode: TileMode.mirror,
              ).createShader(bounds),
              ///Specified white here to get the ShaderMask effect
              child: const Text(
                'Flutter is hot!!',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: [Colors.yellow, Colors.deepOrange.shade900],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                ///Specified white here to get the ShaderMask effect
                child: FlutterLogo(
                  //colors: MaterialColor(0xffffffff, color),
                  textColor: MaterialColor(0xffffffff, color),
                  size: 150.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
