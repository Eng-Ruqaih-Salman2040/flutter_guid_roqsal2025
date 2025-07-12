import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Scrollable_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scrollable(
            axisDirection: AxisDirection.down,
            controller: ScrollController(),
            physics: ScrollPhysics(),
            viewportBuilder: (BuildContext context, ViewportOffset position) {
              return Viewport(
                offset: position,
                cacheExtent: 0.0,
                slivers: <Widget>[
                  SliverFillViewport(
                    delegate: SliverChildListDelegate([
                      Image.asset('images/logo.png'),
                      Image.asset('images/logo.png'),
                    ]),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  const Scrollable_Roq();
}


