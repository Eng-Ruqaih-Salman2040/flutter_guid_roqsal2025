import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/constants.dart';

class Felxible_Roq extends StatelessWidget {
  const Felxible_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          buildText_funroq("Flexible Widget Example 1"),
          Expanded(flex:1,child: Container(
            color: Colors.purpleAccent.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.green,
                    height: 50,
                    child: Center(child: Text("FlexFit Tight")),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            width: 10,
                            color: Colors.red,
                          )),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Container(
                            width: 10,
                            color: Colors.green,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    color: Colors.green,
                    height: 50,
                    child: Center(child: Text("FlexFit Loose")),
                  ),
                ),
              ],
            ),
          ),),
          buildText_funroq("Flexible Widget Example 2"),
          Expanded(flex:3,child: Container(
            color: Colors.yellowAccent.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child:
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 12.0, top: 3.0, right: 12.0),
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "1/3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "(2 Flex / 6 Total)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 2, right: 12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "1/2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "(3 Flex / 6 Total)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, top: 2.0, right: 12.0, bottom: 5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "1/6",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, right: 8.0, left: 8.0),
                              child: Text(
                                "(1 Flex)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),)


        ],
      ),
    );
  }
}