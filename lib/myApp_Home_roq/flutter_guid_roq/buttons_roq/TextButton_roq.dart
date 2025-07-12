/*
Column(
children: [
TextButton.icon(
    icon: const Icon(Icons.camera),
    label: const Text('Take A Photo'),
    onPressed: () {},
),
TextButton(
onPressed: null,
child: const Text('Disabled Button'),
),
TextButton(
onPressed: () {},
child: const Text('Enabled Button'),
),
TextButton.icon(
onPressed: null,
icon: const Icon(Icons.room_rounded),
label: const Text('Disabled Icon Button')),
TextButton.icon(
onPressed: () {},
icon: const Icon(Icons.room_rounded),
label: const Text('Enabled Icon Button'))
],
),
////////////  style way1
TextButton(
            onPressed: () {},
            child: const Text(
              'Text Button',
            ),
            style: TextButton.styleFrom(
                primary: Colors.purple,
                backgroundColor: Colors.amber,
                textStyle:
                    const TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
),
//////////////// style Way 2
TextButton(
              onPressed: () {},
              child: const Text(
                'Text Button',
              ),
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(width: 2, color: Colors.red)),
                  foregroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 30)))
),

TextButton(
            onPressed: () {},
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),


          // main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Kindacode.com',
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    primary: Colors.red,
                    textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)))),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(onPressed: () {}, child: const Text('Text Button 1')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.camera),
                label: const Text('Text Button 2'))
          ],
        ),
      ),
    );
  }
}
*/
