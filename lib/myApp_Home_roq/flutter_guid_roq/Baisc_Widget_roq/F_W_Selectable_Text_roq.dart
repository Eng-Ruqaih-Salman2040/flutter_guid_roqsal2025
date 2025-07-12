import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';



class SelectableText_Widget_roq extends StatelessWidget {
  const SelectableText_Widget_roq({Key? key,}) : super(key: key);

  @override
   Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
          centerTitle: true,
          title: Text(
          'SelectableText ',
          style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: Utils.ubuntuRegularFont),
      ),

      ),
      body:ListView(

        children: <Widget>[
          buildText("SelectableText Widget"),
          SelectableText(
            'Long Press Me, I am Selectable',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          buildText("SelectableText.rich Widget"),
          SelectableText.rich(
            TextSpan(
              text: 'Hi, ', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' I am Selectable. \n\n',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'Long Press',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                TextSpan(
                  text: ' and  copy  me.',
                  style: TextStyle(letterSpacing: 3, fontSize: 16),
                ),
              ],
            ),
          ),
          buildText("Show SelectableText With Example"),
          SelectableText_Widget_Ex_roq(),
        ],

    )
      );
  }
  buildText(String text_roq) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Divider(height: 10,thickness: 3,),
            Text("$text_roq",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],), ),
            const Divider(height: 10,thickness: 3,),
          ],
        ),
      );

  }
}
////////////////////////////////// Example //////////////////
class SelectableText_Widget_Ex_roq extends StatefulWidget {
  @override
  _SelectableTextWidgetState createState() => _SelectableTextWidgetState();
}

class _SelectableTextWidgetState extends State<SelectableText_Widget_Ex_roq> {
  Color bgColor = Colors.blue;

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    //Ads.hideBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
              child: FlutterLogo(
                size: 100,
                textColor: Colors.blue,
              ),
            ),

            /// Selectable text
            Container(
              margin: EdgeInsets.all(24.0),
              child: SelectableText(
                "Long press to select this text.\nYou can tap the text to change the color of Flutter Logo above.",
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: Utils.ubuntuRegularFont,
                ),
                textAlign: TextAlign.center,
                onTap: () => setState(() {
                  bgColor = bgColor == Colors.blue ? Colors.amber : Colors.blue;
                }),
              ),
            ),

            /// A text field to let user paste the copied text
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              margin: EdgeInsets.only(left: 24.0, right: 24.0),
              child: TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey[100]),
                  hintText: 'Copy the text above and paste it here.',
                  prefixIcon: Icon(
                    Icons.content_paste,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
                cursorColor: Colors.amber,
              ),
            ),
          ],
        ),

    );
  }
}
