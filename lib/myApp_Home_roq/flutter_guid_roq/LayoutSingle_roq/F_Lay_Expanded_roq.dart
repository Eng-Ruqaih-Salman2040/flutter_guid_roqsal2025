import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/constants.dart';


class Expanded_Widget_roq extends StatefulWidget {
  const Expanded_Widget_roq({Key? key}) : super(key: key);

  @override
  State<Expanded_Widget_roq> createState() => _Expanded_Widget_roqState();
}

class _Expanded_Widget_roqState extends State<Expanded_Widget_roq> {
  ///Flex factor for 1st widget
  int _flexFactor0 = 1;

  ///Flex factor for 2nd widget
  int _flexFactor1 = 2;

  ///Flex factor for 3rd widget
  int _flexFactor2 = 1;
  @override
  Widget build(BuildContext context) {
    // Expanded() objects takes all available space, and each Expanded gets the
    // portion of space according to it's flex.
    // SizedBox() instead has fixed height/width.
    return Column(
      children: [
        buildText_funroq('Basic Expanded Example1'),
        Expanded(
          child: Container(
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  Expanded(

                    child: Container(
                      color: Colors.red,
                      child: const Text('Item1: flex=1'),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      child: const Text('Item2: flex=2'),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.blue,
                      child: const Text('Item3, flex=3'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        buildText_funroq('Advance Expanded Example1'),
        Expanded(child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xFFe0e0e0),
                child: Row(
                  children: <Widget>[
                    ///First flexible widget
                    Expanded(
                      flex: _flexFactor0,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: GestureDetector(
                          child: Container(
                            child: Center(
                              child: Text(
                                '$_flexFactor0',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            margin: const EdgeInsets.all(10.0),
                            color: const Color(0xFF2196f3),
                            width: 48.0,
                            height: 48.0,
                          ),
                          onTap: () => setState(() {
                            _flexFactor0++;
                          }),
                        ),
                      ),
                    ),

                    ///Second flexible widget
                    Expanded(
                      flex: _flexFactor1,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: GestureDetector(
                          child: Container(
                            child: Center(
                              child: Text(
                                '$_flexFactor1',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            margin: const EdgeInsets.all(10.0),
                            color: const Color(0xFF673ab7),
                            width: 48.0,
                            height: 48.0,
                          ),
                          onTap: () => setState(() {
                            _flexFactor1++;
                          }),
                        ),
                      ),
                    ),

                    ///Third flexible widget
                    Expanded(
                      flex: _flexFactor2,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: GestureDetector(
                          child: Container(
                            child: Center(
                              child: Text(
                                '$_flexFactor2',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            margin: const EdgeInsets.all(10.0),
                            color: const Color(0xFF009688),
                            width: 48.0,
                            height: 48.0,
                          ),
                          onTap: () => setState(() {
                            _flexFactor2++;
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///Click on this button to RESET the values of flex values
              Container(
                margin: EdgeInsets.all(16.0),
                child: ElevatedButton(
                /*  style: ElevatedButton.styleFrom(backgroundColor:Colors.red, ),
                  textColor: Colors.white,*/

                  onPressed: () => setState(() {
                    _flexFactor0 = 1;
                    _flexFactor1 = 2;
                    _flexFactor2 = 1;
                  }),
                  child: Text('RESET'),
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
