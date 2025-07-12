import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(CircularProgressIndicator_roq());

class CircularProgressIndicator_roq extends StatefulWidget {
  const CircularProgressIndicator_roq({Key? key}) : super(key: key);

  @override
  State<CircularProgressIndicator_roq> createState() => _CircularProgressIndicator_roqState();
}

class _CircularProgressIndicator_roqState extends State<CircularProgressIndicator_roq> {
  late bool _loading;
  double? _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Progress Circular Roq Bar'),
        ),
        body: Center(
            child: Column(
              children: [
                buildText('1•	Indeterminate CircularProgress Baisc'),
                CircularProgressIndicatorApp(),
                buildText('2• InDeterminate CircularProgress Example1'),
                Indeterminate_CircularProgressExm_funroq(),
                buildText('3• Determinate CircularProgress Example2'),
                Determinate_CircularProgressExm_funroq(),


              ],
            )
        ),
      ),
    );
  }
  Column Indeterminate_CircularProgressExm_funroq() {
    return Column(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: _loading! ? CircularProgressIndicator(
              //valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepOrange),
              backgroundColor: Colors.grey,
              color: Colors.purple,
              strokeWidth: 8,
              //minHeight: 10,
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
  Column Determinate_CircularProgressExm_funroq() {
    return Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(14.0),
                      child: _loading
                          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(
                            strokeWidth: 10,
                            backgroundColor: Colors.yellow,
                            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                            value: _progressValue,
                          ),
                          SizedBox(height: 10,),
                          Text('${(_progressValue! * 100).round()}%'),
                        ],
                      )
                          : Text("Press button for downloading", style: TextStyle(fontSize: 25)),
                    ),
                  ),
          Center(
            child: IconButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
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
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue = _progressValue!+ 0.2;
        // we "finish" downloading here
        if (_progressValue!.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue=0.0;
          return;
        }
      });
    });
  }
}

/// This is the stateless widget that the main application instantiates.
class CircularProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      
     );
  }

}
