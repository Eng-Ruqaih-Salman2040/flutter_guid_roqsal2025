//---------------------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() => runApp(SliderButton_Roq());

class SliderButton_Roq extends StatelessWidget {
  const SliderButton_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainApp());
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SliderButton(
              action: () async {
                ///Do something here
                Navigator.of(context).pop();
              },
              label: Text(
                "Slide to cancel Event",
                style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              icon: Text(
                "x",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 44,
                ),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            SliderButton(
              action: () async {
                ///Do something here
                Navigator.of(context).pop();
              },

              ///Put label over here
              label: Text(
                "Slide to cancel !",
                style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              icon: Center(
                  child: Icon(
                Icons.power_settings_new,
                color: Colors.white,
                size: 40.0,
                semanticLabel: 'Text to announce in accessibility modes',
              )),

              ///Change All the color and size from here.
              width: 230,
              radius: 10,
              buttonColor: Color(0xffd60000),
              backgroundColor: Color(0xff534bae),
              highlightedColor: Colors.white,
              baseColor: Colors.red,
            )
          ],
        ),
      ),
    ));
  }
}
