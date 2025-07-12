import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';


class Container_Widget_roq extends StatefulWidget {
  const Container_Widget_roq({Key? key,}) : super(key: key);

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<Container_Widget_roq> {
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
          'Container',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
      /*  actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.containerCode),
              ),
            ),
          )
        ],*/
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Divider(thickness: 3,),
              Container(
                child: Text(
                  '1.Baisc Container',
              )),
              Divider(thickness: 3,),
              /// Simple Container
              Container(
                margin: EdgeInsets.all(24.0),
                color: Colors.purpleAccent.shade100,
                child: Text(
                  '2.Simple Container',
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
Divider(thickness: 3,),
              /// Container with Padding
              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.all(24.0),
                color: Colors.blue,
                child: Text(
                  '3.Container with padding',
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
              Divider(thickness: 3,),
              /// Container with a Shape and border
              Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber[200],
                  border: Border.all(color: Colors.blue, width: 3.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Text(
                  '4.Container with shape',
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Divider(thickness: 3,),
              /// Container with a Shape,border and alignment
              Container(
                width: 270.0,
                height: 100.0,
                alignment: Alignment.center,
                // Container.color should not be set when decoration is set.
                decoration: BoxDecoration(
                    border: Border.all(width: 5.0),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  '5.Container with shape and alignment',
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Divider(thickness: 3,),
              /// Container with a different shape
              Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber[200],
                ),
                child: Text(
                  '6.Container with shape',
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Divider(thickness: 3,),

              /// Container with fixed size
              Container(
                margin: EdgeInsets.all(24.0),
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.lightGreenAccent[100],
                ),
                child: Text(
                  '7.Container with size',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Divider(thickness: 3,),

              /// Container with fixed size, rotated a bit
              Container(
                margin: EdgeInsets.all(24.0),
                height: 100,
                width: 100,
                transform: Matrix4.rotationZ(0.15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber[200],
                ),
                child: Text(
                  '8.Container with size rotated',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: Utils.ubuntuRegularFont,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Divider(thickness: 3,),
            ],
          ),
        ),
      ),
    );
  }
}
