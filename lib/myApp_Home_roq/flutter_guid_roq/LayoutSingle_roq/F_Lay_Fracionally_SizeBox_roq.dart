import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/constants.dart';

class FractionallySizedBox_Widget_roq extends StatelessWidget {
  const FractionallySizedBox_Widget_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children:  [
          SizedBox(height: 10),
          buildText_funroq("Baisc FractionallySizedBox"),
          Text('Fractionally sized box sizes its child to a fraction of the '
              'total available space.'),
          Text(
              'To use it inside a column or a row, wrap it in a Flexible widget'),
          Text('FractionallySizedBox with no child serves as whitespace. '
              'The whitespace below always takes 10% of the available height'),
          Flexible(child: FractionallySizedBox(heightFactor: 0.1)),
          Text(
              'The placeholder below always takes 20% of the available height and 50% of the width.\n'),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Placeholder(),
            ),
          ),
          buildText_funroq("FractionallySizedBox with Flexible"),
          Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Container(
                    color: Colors.yellow,
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      widthFactor: 0.5,
                      child: Container(
                        color: Colors.green,
                        child: FractionallySizedBox(
                          heightFactor: 0.5,
                          widthFactor: 0.5,
                          child: Container(
                            color: Colors.red,
                            child: FractionallySizedBox(
                              heightFactor: 0.25,
                              widthFactor: 0.25,
                              child: Container(
                                color: Colors.yellowAccent,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black12,
                child: FractionallySizedBox(
                  heightFactor: 0.50,
                  widthFactor: 0.50,
                  child: Container(
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
            ),
          ),
          //funtionlysizedbox_With_Expanded(),

      ],


    );
  }
}
