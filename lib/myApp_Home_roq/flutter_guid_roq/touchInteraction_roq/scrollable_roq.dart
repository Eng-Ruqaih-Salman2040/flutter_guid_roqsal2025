import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Scrollable_T_Roq extends StatelessWidget {

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
                      Image.asset('assets/images/logo.png'),
                      Image.asset('assets/images/logo.png'),
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

  const Scrollable_T_Roq();
}


