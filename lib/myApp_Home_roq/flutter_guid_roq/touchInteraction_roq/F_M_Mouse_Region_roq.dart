import 'package:flutter/material.dart';

class MouseRegion_Roq extends StatefulWidget {

  @override
  _MouseRegion_RoqState createState() => _MouseRegion_RoqState();

  const MouseRegion_Roq({Key? key}) : super(key: key);
}

class _MouseRegion_RoqState extends State<MouseRegion_Roq> {
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          x = event.position.dx;
          y = event.position.dy;
        });
      },
      cursor: SystemMouseCursors.basic,
      child: Container(
        child: Center(
          child: Text(
            'You touched at: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
          ),
        ),
      ),
    );
  }
}
