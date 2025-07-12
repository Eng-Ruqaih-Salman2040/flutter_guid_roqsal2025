import 'package:flutter/material.dart';

class Autocomplete_Roq extends StatefulWidget {
  const Autocomplete_Roq({Key? key}) : super(key: key);

  @override
  State<Autocomplete_Roq> createState() => _Autocomplete_RoqState();
}

class _Autocomplete_RoqState extends State<Autocomplete_Roq> {
  final items = ['Apple', 'Mango', 'Banana', 'Pineapple', 'Cherry'];
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autocomplete Input'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Autocomplete<String>(

                optionsBuilder: (value) {
                  return items.where(
                        (item) => item.toLowerCase().contains(value.text.toLowerCase()),
                  );
                },
                onSelected: (String selection) {
                  text = selection;
                  setState(() {});
                },

              ),
              Text(
                'Selected: ' + text,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


