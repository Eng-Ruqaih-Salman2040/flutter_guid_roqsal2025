import 'package:flutter/material.dart';

class OpacityAnimation_Roq extends StatefulWidget {
  const OpacityAnimation_Roq({super.key});

  @override
  State<StatefulWidget> createState() => _OpacityAnimation_RoqState();
}

class _OpacityAnimation_RoqState extends State<OpacityAnimation_Roq> {
  double _opacity1 = 1.0, _opacity2 = 1.0, _opacity3 = 1.0;

  Widget _coloredSquare(Color color) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Click on colored squares below to make them invisible, click '
              'once again to make them reappear.',
            ),
            GestureDetector(
              onTap: () {
                setState(() => this._opacity1 = 1.0 - this._opacity1);
              },
              child: Opacity(
                opacity: _opacity1,
                child: _coloredSquare(Colors.red),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => this._opacity2 = 1.0 - this._opacity2);
              },
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity2,
                child: _coloredSquare(Colors.green),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => this._opacity3 = 1.0 - this._opacity3);
              },
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity3,
                child: _coloredSquare(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
