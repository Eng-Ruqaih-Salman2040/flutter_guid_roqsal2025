import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/constants.dart';

enum BestProgrammingLang { Java, Csharp, Dart }
class Radio_Widget_roq extends StatelessWidget {
  const Radio_Widget_roq({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Radio roq',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The inital group value
  String _selectedGender = 'male';
  int _radioVal = 0;
  BestProgrammingLang _lang_roq_ = BestProgrammingLang.Java;
  /////////////////////////////////////////////
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Radio roq',
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(25),
          child: ListView(
            children: [
              buildText_funroq("1.Radio Widget"),
              Radio_roq_fun(),
              ///////////////////////////////////////
              buildText_funroq("2.Radio Widget Example1"),
              Radio_ruq_fun_ex1(),
///////////////////////////////////////////////////////////////
              buildText_funroq("3.Radio Widget Example2"),
              Radio_ruq_fun_ex2()
            ],
          )

      ),
    );
  }

  Column Radio_ruq_fun_ex2() {


    return Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Java Language'),
                  leading: Radio(
                    value: BestProgrammingLang.Java,
                    groupValue: _lang_roq_,
                    onChanged: (BestProgrammingLang? value) {
                      setState(() {
                        _lang_roq_ = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('C# Language'),
                  leading: Radio(
                    value: BestProgrammingLang.Csharp,
                    groupValue: _lang_roq_,
                    onChanged: ( BestProgrammingLang? value) {
                      setState(() {
                        _lang_roq_ = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Dart Language'),
                  leading: Radio(
                    value: BestProgrammingLang.Dart,
                    groupValue: _lang_roq_,
                    onChanged: (BestProgrammingLang? value) {
                      setState(() {
                        _lang_roq_ = value!;
                      });
                    },
                  ),
                ),
              ],
            );
  }

  Column Radio_ruq_fun_ex1() {
    return Column(
              children: [
                Text('Please let us know your gender:'),
                ListTile(
                  leading: Radio(
                    value: 'male',
                    groupValue: _selectedGender,
                    onChanged: (Object? value) {
                      setState(() {
                        _selectedGender = value.toString();
                      });
                    },
                  ),
                  title: Text('Male'),
                ),
                ListTile(
                  leading: Radio(
                    value: 'female',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value.toString();
                      });
                    },
                  ),
                  title: Text('Female'),
                ),
                SizedBox(height: 25),
                Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!'),
                Divider(height: 10,thickness: 3,),
              ],
            );
  }

  Row Radio_roq_fun() {
    return Row(
              children: [0, 1, 2, 3]
                  .map((int index) => Radio<int>(
                value: index,
                groupValue: this._radioVal,
                onChanged: (int? value) {
                  if (value != null) {
                    setState(() => this._radioVal = value);
                  }
                },
              ))
                  .toList(),
            );
  }
}