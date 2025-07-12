
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Switch_Widget_roq extends StatefulWidget
{
  const Switch_Widget_roq({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return switch_button_state_roq();
  }

}
class switch_button_state_roq extends State<Switch_Widget_roq>
{

  bool sw1_val=true;
  bool swT_val=true;
  bool sw2_val=false;
  void onChangedsw1_val(bool value)
  {
    setState(() {
      sw1_val=value;
    });
  }
  void onChangedswT_val(bool value)
  {
    setState(() {
      swT_val=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar:  AppBar(
          title: Text('Switch App Roq'),
          backgroundColor: Colors.purpleAccent.shade700,
        ),
        body:  ListView(
          children: [
            Container(
                padding:  EdgeInsets.all(3.0),
                child: Column(
                    mainAxisAlignment:  MainAxisAlignment.start,
                    children: <Widget>[
                      //////////////////////////////// Switch Widget//////////
                      buildText('1.Switch Widget '),
                      Switch_roq_fun1(),
                      //////////////////////////////////////////// Disable Switch
                      buildText('2.Disabled Switch Widget '),
                      Disabled_Switch_funroq(),
                      ///////////////////////////////////////////// Switch Example 1
                      buildText('3.Switch Widget Example1'),

                      Switch_roqfun_ex1(),

                      //////////////////////////////////////////// CustomSwitch Widget Example2 //////////
                      buildText('4.SwitchListTile Widget'),
                      SwitchListTile_funroq_ex2()
                    ]
                )
            ),
          ],
        )
    );
    throw UnimplementedError();
  }

  Switch Disabled_Switch_funroq() {
    return Switch(
                      onChanged: null,
                      value: false,
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
////////////////////////////////////// SwitchListTile  Example  code
  SwitchListTile SwitchListTile_funroq_ex2() {
    return SwitchListTile(value: swT_val,
                        onChanged: onChangedswT_val,
                        title: Text('Reading mode'),
                        subtitle:  Text('The screen is optomized for reading.'),
                        activeColor: Colors.lightGreenAccent.shade700,
                        inactiveTrackColor:Colors.red.shade700,
                        secondary:  Icon(Icons.brightness_4));
  }
  ////////////////////////////////////// Switch Example 1 code
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      // print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
  Column Switch_roqfun_ex1() {
    return
      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[ Transform.scale(
                            scale: 2,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched,
                              activeColor: Colors.green,
                              activeTrackColor: Colors.lightGreenAccent.shade100,
                              inactiveThumbColor: Colors.black,
                              inactiveTrackColor: Colors.black12,
                            )
                        ),
                          Text('$textValue', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                        ]);
  }

  Column Switch_roq_fun1() {
    return Column(
                       children: [
                         Switch(value: sw1_val, onChanged: onChangedsw1_val),
                    Switch(value: sw2_val, onChanged: (value){setState(() {
                          sw2_val=value;

                    });}),
                       ],
                     );
  }

}