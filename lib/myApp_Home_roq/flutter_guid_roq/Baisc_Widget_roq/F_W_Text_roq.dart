
import 'package:flutter/material.dart';


class Text_Widget_roq extends StatelessWidget {
  const Text_Widget_roq({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Roq App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Hey Ferase Salman!',
              ),
              SizedBox(height: 20,),
              const Text('Hey Ruqaih Salman!',
                  style: TextStyle(
                    fontSize: 30,
                  )),
              SizedBox(height: 20,),
              const Text(
                'Hey Joan Salman!',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20,),
              const Text(
                'Hey Jory Salman!',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Futura',
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20,),
          const Text(
            'Hey in other Simple text demo.',
            // Optional params to try:
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline),
            // Or:
            // style: Theme.of(context).textTheme.xxx
          ),
            Text(
              "Hello World! This is a Text Widget by Ruqaih Salman.",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 8,
                  wordSpacing: 20,
                  backgroundColor: Colors.yellowAccent,
                  shadows: [
                    Shadow(
                        color: Colors.redAccent,
                        offset: Offset(4, 2),
                        blurRadius: 5)
                  ]),
            ),
            ],
          ),
        ));
  }
}
