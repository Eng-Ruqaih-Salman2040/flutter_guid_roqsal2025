
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


class RichText_Widget_Roq extends StatelessWidget {
  const RichText_Widget_Roq({Key? key}) : super(key: key);
  static String rutename='RichText_Widget_roq';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("RichText Roq App"),
        ),
        body:Center(
          child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                ////////////////////////////// Ex1 //////////////////
                Container(
                    child: Center(
                      child: RichText(
                          text:TextSpan(
                              children: [
                                TextSpan(text:'Eng:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.pink)),
                                TextSpan(text:'Ruqaih ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.indigo)),
                                TextSpan(text:'Salman:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.green)),

                              ]
                          )
                      ),
                    )),
                /////////////////////////////////// Ex2 text with onTap event//////////////////
                Container(
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            children: <TextSpan>[
                              TextSpan(text: ' Sign up',
                                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {Navigator.of(context).pushNamed('/Textfield_Widget_Roq');},

                              )
                            ]
                        ),
                      ),
                    )
                ),
///////////////////////////////////////Ex3 Text with widget icon///////////////////
                Container(
                    child: Center(
                        child:RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: [
                              TextSpan(text: 'Click ', style: TextStyle(fontSize: 25)),
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Icon(Icons.add, color: Colors.red),
                                ),
                              ),
                              TextSpan(text: ' to add', style: TextStyle(fontSize: 25)),
                            ],
                          ),
                        )
                    )
                )
              ]
          ),
        )
    );

  }
}
