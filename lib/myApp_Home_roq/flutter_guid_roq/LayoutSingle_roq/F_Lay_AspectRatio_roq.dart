import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';

/*import 'package:flutter_widget_guide/utils.dart';

import '../Ads.dart';
import '../Code.dart';
import '../CodeScreen.dart';*/


class AspectRatio_Widget_roq extends StatefulWidget {
  const AspectRatio_Widget_roq({Key? key}) : super(key: key);

  @override
  _AspectRatioWidgetState createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatio_Widget_roq> {
  double aspectRatio = 1 / 1;
  double aspectRatio1 = 16 / 9;
  double aspectRatio2 = 3 / 2;

  @override
  void initState() {
    super.initState();

    /// Fix portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'AspectRatio',
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
                  builder: (context) => CodeScreen(code: Code.aspectRatioCode),
                ),
              ),
            )
          ],*/

        ),
        body:

        Column(
          children: [
            buildText_funroq("Baisc AspectRation Example1 "),
            Expanded(
              flex:1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        width: 100.0,
                        height: 100.0,
                        child: AspectRatio(
                          aspectRatio: 2.0,
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ),

                      Container(
                        color: Colors.blue,
                        alignment: Alignment.center,
                        width: 100.0,
                        height: 100.0,
                        child: AspectRatio(
                          aspectRatio: 2.0,
                          child: Container(
                            width: 80.0,
                            height: 70.0,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        color: Colors.green,
                        alignment: Alignment.center,
                        width: 100.0,
                        height: 100.0,
                        child: AspectRatio(
                          aspectRatio: 0.5,
                          child: Container(
                            width: 100.0,
                            height: 50.0,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildText_funroq("AspectRation Example2 "),
            Expanded(flex:5,child:  Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  /// Aspect Ratio widget sizes itself freely
                  /// depending on available space
                  child: Container(
                    child: AspectRatio(
                      aspectRatio: aspectRatio,
                      child: Container(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                divider(context),
                Container(
                  margin: EdgeInsets.only(left: 12, right: 12),
                  child: Wrap(
                    children: <Widget>[
                      _OptionItem(aspectRatio1, aspectRatio, _onRatioChanged, 'Ratio: 16/9'),
                      _OptionItem(
                          aspectRatio2, aspectRatio, _onRatioChanged, 'Ratio: 3/2'),
                    ],
                  ),
                )
              ],
            ),),

          ],
        ));
  }

  void _onRatioChanged(double? ratio) => setState(() {
    aspectRatio = ratio!;
  });
}

class _OptionItem<T> extends StatelessWidget {
  const _OptionItem(this.value, this.groupValue, this.onChanged_roq, this.title);

  final String title;
  final T value;
  final T groupValue;
  final  ValueChanged<T?> onChanged_roq;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<T>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.lightBlue,
            onChanged: onChanged_roq),
        GestureDetector(
          onTap: () {
            onChanged_roq(value);
          },
          child: Text(
            title,
            style:
            TextStyle(fontSize: 14.0, fontFamily: Utils.ubuntuRegularFont),
          ),
        ),
      ],
    );
  }
}

Container divider(BuildContext context) => Container(
  child: Divider(),
  margin: EdgeInsets.only(left: 5, right: 5, top: 7),
);
