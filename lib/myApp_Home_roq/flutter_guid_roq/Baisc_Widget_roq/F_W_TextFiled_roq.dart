import 'package:flutter/material.dart';

import '../../../Updated_plugins_roq/fluttertoast_roq2024.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class TextField_Widget_roq extends StatefulWidget {
  const TextField_Widget_roq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextField_Widget_roq> {
  bool _numberInputIsValid = true;
  var myController_roq = TextEditingController();
  var str_roq = "User Name";

  Widget _buildNumberTextField() {
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme
          .of(context)
          .textTheme
          .displayLarge,
      decoration: InputDecoration(
        icon: const Icon(Icons.attach_money),
        labelText: 'Enter an integer:',
        errorText: _numberInputIsValid ? null : 'Please enter an integer!',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      onSubmitted: (val) =>
          Fluttertoast.showToast(msg: 'You entered: ${int.parse(val)}'),
      onChanged: (String val) {
        final v = int.tryParse(val);
        debugPrint('parsed value = $v');
        if (v == null) {
          setState(() => _numberInputIsValid = false);
        } else {
          setState(() => _numberInputIsValid = true);
        }
      },
    );
  }

  final _controller = TextEditingController();

  Widget _buildMultilineTextField() {
    return TextField(
      controller: this._controller,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: '${this._controller.text
            .split(' ')
            .length} words',
        labelText: 'Enter multiline text:',
        hintText: 'type something...',
        border: const OutlineInputBorder(),
      ),
      onChanged: (text) => setState(() {}),
    );
  }

  bool _showPassword = false;

  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: !this._showPassword,
      decoration: InputDecoration(
        labelText: 'password',
        prefixIcon: const Icon(Icons.security),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: this._showPassword ? Colors.blue : Colors.grey,
          ),
          onPressed: () {
            setState(() => this._showPassword = !this._showPassword);
          },
        ),
      ),
    );
  }

  Widget _buildBorderlessTextField() {
    return const TextField(
      maxLines: 3,
      decoration: InputDecoration.collapsed(hintText: 'borderless input'),
    );
  }

  Widget _buildRetriveTextField_byControllor() {

    return (
        Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ////////////////////////////////////////////////////////
              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                textAlign: TextAlign.center,
                controller: myController_roq,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    str_roq = myController_roq.text;
                  });
                },
                child:
                Text("Get Value ",
                  style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,),
                //==> color: Colors.black,

              ),

              Text("The value of Textfild is :$str_roq",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

              ),
            ],
          )
          ,
        ));
  }

  Widget _Filled_Color_BorderRadiuse_mearge() {
    return (Container(
        margin: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: "TF_fillColor",
            labelStyle: TextStyle(fontSize: 18.0),
            hintText: "Enter text",
            hintStyle: TextStyle(fontSize: 12),
            icon: Icon(Icons.attach_money),
            //border:OutlineInputBorder(   //Or
            enabledBorder: OutlineInputBorder(
              //borderSide:BorderSide(width: 2) ,//Or
              borderSide: BorderSide(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(50.0), //Or
              //borderRadius: BorderRadius.all(Radius.circular(4.0))
            ),
            fillColor: Colors.tealAccent.shade100,
            filled: true,
          ),
          keyboardType: TextInputType.number,
        )));
  }

  Widget _PrefixText_SuffixText() {
     ////////////////////////////////////PrefixText and SuffixText with Phone fild///////////////////////////////////////
              return Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixText: "+927 ",
                        prefixStyle: TextStyle(fontSize: 18.0),
                        suffixText: "Yeman",
                        suffixStyle: TextStyle(fontSize: 18.0),
                        labelText: "Prefix & Suffix Text",
                        labelStyle: TextStyle(fontSize: 18.0),
                        hintText: "Enter PhonNum",
                        hintStyle: TextStyle(fontSize: 12),
                        icon: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        )),
                    keyboardType: TextInputType.number,
                  ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        const ListTile(title: Text('1. Number input field')),
        _buildNumberTextField(),
        const ListTile(title: Text('2. Multiline input field')),
        _buildMultilineTextField(),
        const ListTile(title: Text('3. Password input field')),
        _buildPasswordTextField(),
        const ListTile(title: Text('4. Borderless input')),
        _buildBorderlessTextField(),
        ////////////////////////////////////// Add code by Roq
        Divider(thickness: 2,),
        const ListTile(title: Text('5. Retrieve the value of an input Field')),
        _buildRetriveTextField_byControllor(),
        Divider(thickness: 2,),
        const ListTile(title: Text('6. Filled Color and BorderRadiuse mearge')),
        _Filled_Color_BorderRadiuse_mearge(),
        Divider(thickness: 2,),
        const ListTile(title: Text('7. PrefixText and SuffixText with Phone fild')),
        _PrefixText_SuffixText(),



      ],
    );
  }
}




