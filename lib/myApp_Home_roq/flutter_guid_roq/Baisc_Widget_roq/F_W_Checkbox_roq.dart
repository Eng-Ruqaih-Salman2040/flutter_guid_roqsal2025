import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckBox_Widget_roq(),
   ));
}

class CheckBox_Widget_roq extends StatefulWidget {
  const CheckBox_Widget_roq({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<CheckBox_Widget_roq> {
  bool valuefirst = true;
  bool valuesecond = false;
  bool _checkBoxVal = true;
  bool  valuefirst2 = false;
  bool valuesecond2 = false;
////////////////////////////////////////// CheckBox Example Code ////////////
  bool Js = false;
  bool Csharp = false;
  bool Python = false;
  String get txtget_roq {
    String str_roq = "You Selected :\n";
    if (Js == true) str_roq += ("Java\n");
    if (Csharp == true) str_roq += ("C#\n");
    if (Python == true)
      str_roq += ("Python\n");
    if(Js == false&&Csharp == false&&Python == false)
      str_roq += ("None\n");
    return str_roq;
  }
  /////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Checkbox'),),
        body: Container(

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 15,),
                  Divider(height: 10,thickness: 3,),
                  Text('Checkbox without Header and Subtitle: ',
                    style: TextStyle(fontSize: 18.0,
                        fontWeight: FontWeight.bold), ),
                  Divider(height: 10,thickness: 3,),
                  SizedBox(height: 15,),
                  const Text('Checkbox'),
                  Checkbox(
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() => this._checkBoxVal = value);
                      }
                    },
                    value: this._checkBoxVal,
                  ),
                  const Text('Disabled Checkbox'),
                  const Checkbox(
                    tristate: true,
                    onChanged: null,
                    value: null,
                  ),
                  const Divider(),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 10,),

                      Text('Checkbox with active/unactive Color ',style: TextStyle(fontSize: 17.0), ),
                      Expanded(
                        child: Checkbox(
                          checkColor: Colors.greenAccent,
                          activeColor: Colors.red,
                          value: this.valuefirst,
                          onChanged: (bool? value) {
                            setState(() {
                              this.valuefirst = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Checkbox(
                          value: this.valuesecond,
                          onChanged: (bool? value) {
                            setState(() {
                              this.valuesecond = value!;
                            });
                          },
                        ),
                      ),
                    ],),
                      SizedBox(height: 10,),
                  Divider(height: 10,thickness: 3,),
                      Text('CheckboxListTile with Header and Subtitle',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[500],), ),
                  Divider(height: 10,thickness: 3,),
                  CheckboxListTile(
                        secondary: const Icon(Icons.alarm),
                        title: const Text('Ringing at 4:30 AM every day'),
                        subtitle: Text('Ringing after 12 hours'),
                        value: this.valuefirst2,
                        //-->onChanged: (bool? value) {
                        onChanged: (bool? value) {
                          setState(() {
                            this.valuefirst2 = value!;//-->value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        secondary: const Icon(Icons.alarm),
                        title: const Text('Ringing at 5:00 AM every day'),
                        subtitle: Text('Ringing after 12 hours'),
                        value: this.valuesecond2,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valuesecond2 = value!;
                          });
                        },
                      ),
                  Divider(height: 10,thickness: 3,),
                  Text('Checkbox with CheckboxListTile Example: ',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold), ),
                  Divider(height: 10,thickness: 3,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: Js,
                          onChanged: (bool? value_roq) {
                            setState(() {
                              Js = value_roq!;
                            });
                          }),
                      Text("Java")
                    ],
                  ),
                  CheckboxListTile(
                    value: Csharp,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value_roq) {
                      setState(() {
                        Csharp = value_roq!;
                      });
                    },
                    title: Text("C#"),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: Python,
                          onChanged: (value_roq) {
                            setState(() {
                              Python = value_roq!;
                            });
                          }),
                      Text("Python")
                    ],
                  ),
                  ElevatedButton(
                    child: Text(
                      "Slected Languages",
                      style: TextStyle(fontSize: 17),
                    ),
                    onPressed: () {
                      var ad_roq = AlertDialog(
                        title: Text("Thank you for applying "),
                        content: Text(txtget_roq),
                      );
                      showDialog(
                          context: context,
                          builder: (BuildContext ctx_roq) {
                            return ad_roq;
                          });
                    },
                  ),
                 // build_Checkbox_ex1_funRoq(),
                ],
              ),
                  //////////////////////////// End Example /////////////////
                ],
              ),
            )
        ),

    );
  }
}
