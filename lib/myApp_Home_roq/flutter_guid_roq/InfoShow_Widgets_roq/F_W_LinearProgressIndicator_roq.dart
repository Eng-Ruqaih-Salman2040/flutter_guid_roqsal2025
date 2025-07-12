import 'package:flutter/material.dart';
import 'dart:async';

class LinearProgress_Widget_roq extends StatefulWidget {
  const LinearProgress_Widget_roq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulWidgetsExampleState();
}

class _StatefulWidgetsExampleState extends State<LinearProgress_Widget_roq> {
  bool? _loading;
////////////////////////////////// var Example2 /////
  late bool _loading_det;
  late double _progressValue;
  @override
  void initState() {
    super.initState();
    _loading = false;
    ////////////////Ex2
    _loading_det = false;
    _progressValue = 0.0;
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //const Text('1•	IndeterminateLinearProgressIndicator'),
        // **When value=null, progress indicators become stateless.**

        buildText('1•	Indeterminate LinearProgress Baisc'),
        const LinearProgressIndicator(),
        buildText('2•	Indeterminate LinearProgress Example1'),
        Indeterminate_LinearProgress_funroq(),
        buildText('3•	determinate LinearProgress Example2'),
        determinate_LinearProgress_Ex2_funroq(),


      ],
    );
  }

  Column determinate_LinearProgress_Ex2_funroq() {
    return Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: _loading_det
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LinearProgressIndicator(
                    backgroundColor: Colors.cyanAccent,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                    value: _progressValue,
                  ),
                  Text('${(_progressValue * 100).round()}%'),
                ],
              )
                  : Text("Press button for downloading", style: TextStyle(fontSize: 25)),
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  _loading_det = !_loading_det;
                  _updateProgress();
                });
              },
              tooltip: 'Download',
              icon: const Icon(Icons.cloud_download),
              iconSize: 32.0,


            ),
          ),
        ],
      );
  }

  Column Indeterminate_LinearProgress_funroq() {
    return Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: _loading! ? LinearProgressIndicator(
                //valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                backgroundColor: Colors.grey,
                color: Colors.purple,
                minHeight: 5,
              ) : Text(
                  "Press button for downloading",
                  style: TextStyle(fontSize: 25)),
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  _loading = !(_loading!);
                });

              },
              tooltip: 'Download',
              icon: const Icon(Icons.cloud_download),
              iconSize: 32.0,


            ),
          ),
        ],
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
  // this function updates the progress value
  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue =_progressValue!+ 0.1;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading_det = false;
          t.cancel();
          _progressValue = 0.0;
          return;



        }
      });
    });
  }
}
