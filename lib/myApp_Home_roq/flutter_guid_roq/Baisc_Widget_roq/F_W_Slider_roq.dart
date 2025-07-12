import 'package:flutter/material.dart';

class Slider_Widget_roq extends StatefulWidget {
  const Slider_Widget_roq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulWidgetsExampleState();
}

class _StatefulWidgetsExampleState extends State<Slider_Widget_roq> {

  double _slider1Val = 0.5;
  double _slider2Val = 50.0;
  int _value = 6;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        buildText('1.Slider Baisc'),
        Slider(
          onChanged: (double value) {
            setState(() => this._slider1Val = value);
          },
          value: this._slider1Val,
        ),
       buildText('2.Slider with Divisions and Label'),
        Slider(
            value: _slider2Val,
            max: 100.0,
            divisions: 5,
            label: '${_slider2Val.round()}',
            onChanged: (double value) {
              setState(() => _slider2Val = value);
            }),
        buildText('3.Slider Example1'),
        Slider_Ex1_Funroq(),
        buildText('4.RangeSlider Example2'),
        RangSlider_Ex2_Funroq(),


      ],
    );
  }

  Padding RangSlider_Ex2_Funroq() {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.volume_up,
                    size: 40,
                  ),
                  new Expanded(
                      child: RangeSlider(
                        values: _currentRangeValues,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      )
                  ),
                ]
            )
        ),
      );
  }

  Padding Slider_Ex1_Funroq() {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.volume_up,
                    size: 40,
                  ),
                  new Expanded(
                      child: Slider(
                          value: _value.toDouble(),
                          min: 1.0,
                          max: 20.0,
                          divisions: 10,
                          activeColor: Colors.green,
                          inactiveColor: Colors.orange,
                          label: 'volume value: $_value',
                          onChanged: (double newValue) {
                            setState(() {
                              _value = newValue.round();
                            });
                          },
                          semanticFormatterCallback: (double newValue) {
                            return '${newValue.round()} dollars';
                          }
                      )
                  ),
                ]
            )
        ),
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
