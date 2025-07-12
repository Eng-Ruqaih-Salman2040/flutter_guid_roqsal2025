import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(Timer_Widget_roq());
}

class Timer_Widget_roq extends StatelessWidget {
  const Timer_Widget_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Timer',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: Text(
        'Timer',
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: Utils.ubuntuRegularFont),
      ),

    ),
        body:

          ListView(
                children: [
                  buildText("Example1 :Timer configured to fire once"),
                  Timer_fir_once_classroq(),
                  buildText("Example2 :Timer configured to fire repeatedly"),
                  Timer_fire_repeatedly_classroq(),
                ]),
          //),
        );

  }
  buildText(String text_roq) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Divider(height: 10,thickness: 3,),
            Text("$text_roq",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],), ),
            const Divider(height: 10,thickness: 3,),
          ],
        ),
      );

  }
}
class Utils
{
  //fonts
  static const String ubuntuFont = "Ubuntu";
  static const String crimsonFont = "Crimson";
  static const String ubuntuRegularFont = "Ubuntu-Regular.ttf";
  static const String crimsonRegularFont = "CrimsonText-Regular.ttf";
}
///////////////////////////////// Timer configured to fire once ///////////////
class Timer_fir_once_classroq extends StatefulWidget {
  const Timer_fir_once_classroq({Key? key}) : super(key: key);

  @override
  _Timer_fir_onceState createState() => _Timer_fir_onceState();
}

class _Timer_fir_onceState extends State<Timer_fir_once_classroq> {
  // If the user presses the button, _isButtonPressed is set to true
  // Then the button will be disable
  bool _isButtonPressed = false;

  // show a blue box when _showBox == true
  bool _showBox = false;

  void _startTimer() {
    // Disable the button after it has been pressed
    setState(() {
      _isButtonPressed = true;
    });

    Timer(Duration(seconds: 3), () {
      setState(() {
        _showBox = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _isButtonPressed == false ? _startTimer : null,
          child: Text('Show The Blue Box'),
        ),
        _showBox == true
            ? Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        )
            : Text('Press the button and wait for 3 seconds to see the box'),
      ],
    );
  }
}
////////////////////////////// Timer & periodic -->Timer configured to fire repeatedly ///////////////

class Timer_fire_repeatedly_classroq extends StatefulWidget {
  const Timer_fire_repeatedly_classroq({Key? key}) : super(key: key);

  @override
  _Timar_Widget_RoqState createState() => _Timar_Widget_RoqState();
}

class _Timar_Widget_RoqState extends State<Timer_fire_repeatedly_classroq> {
  var start_roq=0;
  late Timer timer;
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$start_roq",style: TextStyle(fontSize: 72,color:Colors.teal)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(onPressed:() =>startTimar(10), icon:Icon(Icons.replay), label:Text("Restart")),

                  TextButton.icon(onPressed: pauseTimar, icon:Icon(Icons.pause), label:Text("Pause")),
                  TextButton.icon(onPressed: continutTimar, icon:Icon(Icons.play_arrow), label:Text("Continue")),
                ],
              )
            ] ),

    );


  }

  startTimar(int i) {
    //if(timer!=null) timer.cancel();
    setState(() {
      start_roq=i;
    });
    timer=Timer.periodic(Duration(milliseconds: 500),
            (timer)=> setState(() {
          start_roq<1?timer.cancel():start_roq-=1;
        }));


  }

  pauseTimar() {
    //if(timer!=null)
    timer.cancel();
  }

  continutTimar() {
    startTimar(start_roq);
  }
}

