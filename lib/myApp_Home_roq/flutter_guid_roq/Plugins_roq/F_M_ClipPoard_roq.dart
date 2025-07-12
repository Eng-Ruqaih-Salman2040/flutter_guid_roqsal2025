
//---------------------------------------------------------------------------------------------------
import  'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clipboard_Roq extends StatefulWidget {

  @override
  _Clipboard_RoqState createState() => _Clipboard_RoqState();

  const Clipboard_Roq({Key? key}) : super(key: key);
}

class _Clipboard_RoqState extends State<Clipboard_Roq> {

  TextEditingController field = TextEditingController();
  String pasteValue='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  controller: field,
                  decoration: InputDecoration(
                      hintText: 'Enter text'
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        if(field.text.trim() == ""){
                          print('enter text');
                        } else {
                          print(field.text);
                          FlutterClipboard.copy(field.text).then(( value ) =>
                              print('copied'));
                        }
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text('COPY')),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        FlutterClipboard.paste().then((value) {
                          setState(() {
                            field.text = value;
                            pasteValue = value;
                          });
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text('PASTE')),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Clipboard Text: $pasteValue',style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
