import 'package:flutter/material.dart';

class Scrollbar_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  const Scrollbar_Roq();
}


