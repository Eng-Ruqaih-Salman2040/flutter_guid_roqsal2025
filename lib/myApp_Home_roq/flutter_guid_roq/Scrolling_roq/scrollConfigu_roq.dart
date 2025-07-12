import 'package:flutter/material.dart';

class ScrollConfiguration_Roq extends StatelessWidget {
  const ScrollConfiguration_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration_Main_Roq();
  }
}


class ScrollConfiguration_Main_Roq extends StatelessWidget {

  final initList = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: initList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${initList[index]}'),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

// edge effect comes from GlowingOverscrollIndicator
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}


