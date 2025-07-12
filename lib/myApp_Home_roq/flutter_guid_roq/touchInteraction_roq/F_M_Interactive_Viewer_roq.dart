import 'package:flutter/material.dart';
class IntractiveViewer_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        minScale: 0.1,
        maxScale: 6,
        child: Image.asset('assets/images/image_maps.jpg'),
      ),
    );
  }

  const IntractiveViewer_Roq({Key? key}) : super(key: key);
}
