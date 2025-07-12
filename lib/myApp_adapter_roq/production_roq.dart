import 'package:flutter/material.dart';


class CmpIntroPage extends StatefulWidget {

  String? Title;
  //var BackRoute,NextRoute;
  final List ItemList;

  CmpIntroPage({
     this.Title,
    //required this.BackRoute,
    //required this.NextRoute,
    required this.ItemList,
  });

  @override
  _CmpIntroPageState createState() => new _CmpIntroPageState();
}

class _CmpIntroPageState extends State<CmpIntroPage> {
  ScrollController SCIntroPage = new ScrollController();


  @override
  void initState(){
    super.initState();
    //ShowMyAds();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
      appBar: null,
      /*AppBar(
         // backgroundColor:ThemeAppBar,
          leading: Padding(
            padding:
            EdgeInsets.only(left: 12),
            child:  IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){

                Navigator.pushNamed(context,widget.BackRoute);
              },
            ),
          ),
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:
                  SizedBox(
                      width: MediaQuery.of(context).size.width-50,
                      height: MediaQuery.of(context).size.height,
                      child:

                        Text(widget.Title,
                        style:TextStyle(
                            fontFamily: "PT Mono",
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                            color:Colors.white
                        ),

                  )
              )
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.format_list_numbered),
              onPressed: (){
               // ShowMyAds();
                //PlayTapSound();
                Navigator.pushNamed(context,"/Main");
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
               // bannerAdTutorial?.dispose();
               // ShowMyAds();
               // PlayTapSound();
                Navigator.pushNamed(context,widget.NextRoute);
              },
            ),
          ],
        )*/
      body:
      ListView(
        controller:SCIntroPage,
        children: <Widget>[
          new Container(

            padding: new EdgeInsets.all(20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                for(var item in widget.ItemList)
                  Container(child:item,/*color:Color(0xFFffaa38)*/),


                SizedBox(height:85),

              ],
            ),
          ),
        ],
      ),
      floatingActionButton:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
             // backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_up),
              onPressed:(){
                SCIntroPage.animateTo(
                  0,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:6,),
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"FrontPageFAB",
              //backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_down),
              onPressed:(){
                SCIntroPage.animateTo(
                  SCIntroPage.position.maxScrollExtent,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:65)

        ],
      ),

    );
  }
}
//////////////////////////
class CmpGreyCardImageTitle extends StatelessWidget {

  var CardIcon;
  final String CardTitle;

  CmpGreyCardImageTitle({required this.CardIcon, required this.CardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child:
      new Card(
        color:Colors.blueGrey[200],
        child: new Container(
          padding: new EdgeInsets.all(5.0),
          child: new Row(
              children: <Widget>[
                IconButton(
                  onPressed:(){},
                  icon:CardIcon,
                ),
                Text(
                  CardTitle,
                  style:TextStyle(
                   // color: Colors.white,
                    fontFamily: "PT Mono",
                    fontSize:19,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }


}

/////////////////////////////////
class CmpCode extends StatelessWidget {

  final String CodeTxt;

  CmpCode({
    required this.CodeTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      CodeTxt,
      overflow:TextOverflow.clip,
      style:TextStyle(
        color:Colors.indigo,
        fontSize:12,
      ),
    );
  }

}