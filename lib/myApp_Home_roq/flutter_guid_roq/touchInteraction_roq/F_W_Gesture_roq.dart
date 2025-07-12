import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MaterialApp(
    title: 'Gesture Detector Roq Ex',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home:  const GestureDetector_Widget_roq(),
  ));
}

class GestureDetector_Widget_roq extends StatelessWidget {
  const GestureDetector_Widget_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title:Text("GestureDetector ")),
      body: /*Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: height * 0.2),
        child:*/ SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  const [
              MyCardWidget(),
              MyFavoriteIconWidget()
            ],
          ),
        ),

    );
  }
}
//////////////////////////

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  Color bgColor = Colors.yellow;
  bool makeCircular = false;
  double _scaleFactor = 0.5;
  double _baseScaleFactor = 0.5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        setState(() {
          bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      } ,
      onDoubleTap: (){
        setState(() {
          bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      onLongPress: (){
        setState(() {
          makeCircular = !makeCircular;
        });
      },
      onScaleStart: (details){
        _baseScaleFactor = _scaleFactor;

      },
      onScaleUpdate: (details){
        setState(() {
          _scaleFactor = _baseScaleFactor * details.scale;
        });
      },
      onScaleEnd: (details){
        // return to initial scale
        _scaleFactor = _baseScaleFactor;
      },
      child:   Transform.scale(
        scale: _scaleFactor,
        child: Card(
          shape: makeCircular? const CircleBorder(): const RoundedRectangleBorder(),
          child: const SizedBox(
            height: 300,
            width: 300,
          ),
          color: bgColor,
        ),
      ),
    );
  }
}
/////////////////////
class MyFavoriteIconWidget extends StatefulWidget {
  const MyFavoriteIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFavoriteIconWidget> createState() => _MyFavoriteIconWidgetState();
}

class _MyFavoriteIconWidgetState extends State<MyFavoriteIconWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState(() {
            isSelected = !isSelected;
          });
        },
        child:  Icon(
          isSelected ? Icons.favorite: Icons.favorite_border,
          size: 40,
          color: isSelected? Colors.red: Colors.black ,
        )
    );
  }
}
class GestureDetectorWidget extends StatefulWidget {
  @override
  _GestureDetectorWidgetState createState() => _GestureDetectorWidgetState();
}
///////////////////////// Example2 ////////////////////////////////////////////
class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  var currentGesture = "Gesture will Appear here";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentGesture = "Tapped";
            });
          },
          onDoubleTap: () {
            setState(() {
              currentGesture = "Double Tapped";
            });
          },
          onLongPress: () {
            setState(() {
              currentGesture = "Long Press ";
            });
          },
          onLongPressEnd: (details) {
            setState(() {
              currentGesture = "Long Press ends";
            });
          },
          onPanStart: (paninfo) {
            setState(() {
              currentGesture = "Pan Started";
            });
          },
          onPanUpdate: (paninfo) {
            setState(() {
              currentGesture = "Pan" + paninfo.delta.toString();
            });
          },
          onPanEnd: (paninfo) {
            setState(() {
              currentGesture = "Pan Ended";
            });
          },
          onHorizontalDragStart: (draginfo) {
            setState(() {
              currentGesture = "Drag" + draginfo.toString();
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: InkWell(
              child: Container(
                width: 400,
                height: 200,
                child: Card(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        currentGesture.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ListView(
            children: [],
          ),
        )
      ],
    );
  }
}



