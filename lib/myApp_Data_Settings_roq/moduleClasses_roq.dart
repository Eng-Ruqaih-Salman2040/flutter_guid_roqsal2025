import 'package:flutter/material.dart';

import '../myApp_adapter_roq/production_roq.dart';

class CmpTitle extends StatelessWidget {
  final String Title;

  CmpTitle({
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        /*color: Color(0xFF263238),*/ fontWeight: FontWeight.bold),
     /* style: TextStyle(
        fontFamily: "PT Mono",
        fontSize: 14,
        fontWeight: FontWeight.w200,
        //color: Colors.teal,
      ),*/
    );
  }
}

class CmpSubTitle2 extends StatelessWidget {
  final String SubTitle2;

  CmpSubTitle2({
    required this.SubTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      SubTitle2,textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
            /*color: Color(0xFF37474F), */fontWeight: FontWeight.w500
        )
     /* style: TextStyle(
        color: Colors.blue,
        fontFamily: "PT Mono",
        fontSize: 13,
        fontWeight: FontWeight.w200,
      ),*/
    );
  }
}
class CmpSubTitle1 extends StatelessWidget {
  final String SubTitle1;

  CmpSubTitle1({
    required this.SubTitle1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        SubTitle1,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Color(0xFF263238), fontWeight: FontWeight.bold
        )
      /* style: TextStyle(
        color: Colors.blue,
        fontFamily: "PT Mono",
        fontSize: 13,
        fontWeight: FontWeight.w200,
      ),*/
    );
  }
}


List<Widget> Production_AppName_CompList = [
  SizedBox(
    height: 5,
  ),
  Container(
    padding: new EdgeInsets.only(bottom: 20.0),
    child: new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title: "What is App Name (Why it’s Important)"),
              Divider(),
              CmpSubTitle2(
                  SubTitle2:
                      """Your app name represents your brand. Every phone comes with a launcher app. When you open the launcher app it displays the launcher icons for all the installed apps. Your app name is displayed below the launcher icon. 
                     Having an appropriate app name helps you promote your brand.
                    """),
              //Image.asset("assets/images/app_name_roq.png"),
              CmpTitle(Title: """Changing App Name in Flutter For Android"""),
              Divider(),
              CmpSubTitle2(
                  SubTitle2:
                      """The app name in Android is changed by modifying the label name in AndroidManifest.xml file. This method of changing the name is called a native way of changing the app name.\n"""),
              Divider(height: 5,),
              CmpSubTitle1(
                SubTitle1: "Steps to change app name in Android:",
              ),

              Divider(),
              CmpSubTitle2(
                SubTitle2:
                    "\n1-Open AndroidManifest\nHead To Your Root Of Your Project > android > app > src > main > AndroidManifest.xml\n",
              ),
              Image.asset("assets/images/manifest_roq.png"),
              CmpSubTitle2(
                SubTitle2: "\n2-Change The Name At label\n",
              ),
              Image.asset("assets/images/manifestLabel_roq.png"),
              CmpSubTitle2(SubTitle2: "\n3-Hit flutter clean command in the terminal.\n4- Completely stop and run your app\n",),
              Divider(),
              CmpTitle(Title: "Output:"),
              CmpSubTitle2(SubTitle2: "Here’s how your app name looks on the launcher app."),
              Image.asset("assets/images/app_name_roq.png"),
              VerticalDivider(),
              CmpTitle(Title: "Changing App Name in Flutter For iOS"),
              Divider(),
        CmpSubTitle2(SubTitle2:"The app name in iOS is changed by modifying the CFBundleName in the info.plist file."),
              Divider(),
              CmpSubTitle1(SubTitle1: "\nSteps to change app name in iOS:\n"),
              Divider(),
              CmpSubTitle2(SubTitle2: "1- Navigate to the ios>Runner and open the info.plist file.\n"),
              Image.asset("assets/images/ios_infoList_roq.png"),
        CmpSubTitle2(SubTitle2:"\n2- Find the key named as CFBundleName and replace the string value (below it) to reflect the new app name."),
              Image.asset("assets/images/ios_infolabel_roq.png"),
              CmpSubTitle2(SubTitle2: "\n3- Hit flutter clean command in the terminal.\n4- Completely stop and run your app."),
              Divider(),
              CmpTitle(Title: "\nOutput:\n"),
Image.asset("assets/images/appName_ios_roq.png"),


            ]),
      ),
    ),
  ),
];



List Production_AppIcon_CompList = [
  SizedBox(
    height: 5,
  ),
  Container(
    padding: new EdgeInsets.only(bottom: 20.0),
    child: new Card(
      elevation: 3,
      child: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              CmpTitle(
                Title: "Changing App Icon",
              ),
              Divider(),
              CmpSubTitle2(SubTitle2: "When you create a Flutter app, by default the launcher icon is created with the Flutter logo. You must replace the Flutter logo with your own designed icon."),
              Divider(),
              CmpTitle(Title: "Getting Started",),
              Divider(),
       // CmpSubTitle21(SubTitle1:"Getting Started"),

              CmpSubTitle2(
                SubTitle2: "\n1-Head To https://appicon.co/",
              ),
              CmpSubTitle2(
                SubTitle2: "\n2-Select The Image Then Press Generate\n",
              ),
              Image.asset("assets/images/AppIcon1.PNG"),
              CmpSubTitle2(
                SubTitle2: "\n3-Assets Will be Downloaded\n",
              ),
              Image.asset("assets/images/AppIcon2.PNG"),
              CmpSubTitle2(
                SubTitle2: "\n4-Needed Assets From RAR\n",
              ),
              Image.asset("assets/images/AppIcon3.PNG"),
              CmpSubTitle2(
                SubTitle2:
                    "\n5-Copy Them To Root Of Project > android > app > src > main > res  \n",
              ),
              Image.asset("assets/images/AppIcon4.PNG"),
            ]),
      ),
    ),
  ),
];



List Production_AppSign_CompList = [
  SizedBox(
    height: 5,
  ),
  Container(
    padding: new EdgeInsets.only(bottom: 20.0),
    child: new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(
                Title: "Why Sign App?",
              ),
              Divider(),
              CmpSubTitle2(
                SubTitle2:
                    "\nTo publish on the Play Store, you need to give your app a digital signature.Even Updating The App Will Require The Key Sign So Make Sure To Keep The Key With You,If Lost You Can Still Contact Google...\n",
              ),
            ]),
      ),
    ),
  ),
  SizedBox(
    height: 5,
  ),
  Container(
    padding: new EdgeInsets.only(bottom: 20.0),
    child: new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(
                Title: "Getting Started",
              ),
              Divider(),
              CmpSubTitle2(
                SubTitle2: "\n1-Make Sure Java Installed Before Starting\n",
              ),
              CmpSubTitle2(
                SubTitle2:
                    "\n2-Creating A Folder To Store Key Whithin,Create A Folder KeyStore At C:",
              ),
              Image.asset("assets/images/AppSign1.PNG"),
              CmpSubTitle2(
                SubTitle2:
                    "\n3-Open Your Cmd And Head To Your Java jre bin And Run The Following Command And Use Your Own information (Image Scrollable)\n",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Image.asset(
                  "assets/images/AppSign2.PNG",
                  width: 450,
                  height: 450,
                ),
              ),
              CmpSubTitle2(
                SubTitle2: "\n4-Here Is the Created key\n",
              ),
              Image.asset("assets/images/AppSign3.PNG"),
              CmpSubTitle2(
                SubTitle2: "\n5-In Android Create new File key.properties\n",
              ),
              Image.asset("assets/images/AppSign5.PNG"),
              CmpSubTitle2(
                SubTitle2:
                    "\n6-Open This File And Set Your Information Appearing In Green As Set In Keytool",
              ),
              Image.asset("assets/images/AppSign6.PNG"),
              CmpSubTitle2(
                SubTitle2:
                    "\n7-Head To Build.gradle root > android > app > build.gradle\n",
              ),
              Image.asset("assets/images/AppSign7.PNG"),
              CmpSubTitle2(
                SubTitle2:
                    "\n8-Add The Following Before android {...} \n"),
CmpSubTitle1(SubTitle1: "Note: ",),CmpSubTitle2(SubTitle2: "{Next Image Scrollable}"),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Image.asset(
                  "assets/images/AppSign8.PNG",
                  width: 450,
                  height: 450,
                ),
              ),
              CmpSubTitle2(
                SubTitle2:
                    "\n9-Add signingConfigs{..} Before buildTypes And Change buildTypes From .debug To .release\n"),
              CmpSubTitle1(SubTitle1: "Note: ",),CmpSubTitle2(SubTitle2: "{Next Image Scrollable}"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Image.asset(
                  "assets/images/AppSign9.PNG",
                  width: 450,
                  height: 450,
                ),
              ),
            ]),
      ),
    ),
  ),
];

List Production_AppBuild_CompList = [
  SizedBox(
    height: 5,
  ),
  Container(
    padding: new EdgeInsets.only(bottom: 20.0),
    child: new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(
                Title: "Building The Apk",
              ),
              Divider(),
              CmpSubTitle2(
                SubTitle2: "\n1-Run flutter build apk \n(Image Scrollable)",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Image.asset(
                  "assets/images/AppBuild.PNG",
                  width: 450,
                  height: 200,
                ),
              ),
            ]),
      ),
    ),
  ),
];
/////////////////////////////////////////////// Listes of Flutter Introduction 

List FlutterIntroCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/160x160_Flutter.png"),
    CardTitle:"Flutter",
  ),
  SizedBox(height:3,),
  Container (
    padding: new EdgeInsets.only(bottom: 5.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is Flutter?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Flutter Is An Open-Source Mobile Application Development Framework.",)
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Who Developed Flutter?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Flutter is Realised By Google On May 2017 ",)
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Are Platforms Supported By Flutter?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Flutter is A CrossPlatform Used to Develop Applications for:\n-Android\n-IOS\n-Web\n-Desktop!",)
            ]
        ),
      ),
    ),
  ),
];

List DartIntroCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Dart_Logo.png"),
    CardTitle:"Dart",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is Dart?",),
              Divider(),
                    CmpSubTitle2(SubTitle2:"Dart is A Client-Optimized Programming Language For Fast Apps On Multiple Platforms.",)
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Who Developed Dart?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Dart is Realised By Google On November 2013.",)
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Are Platforms Supported By Dart?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Dart is A CrossPlatform Used to Develop Applications for Mobile,Web And Desktops!",)
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Is Dart Considered As Oriented Programing Language?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Yes,Dart Is an Object Oriented Programing Language",)
            ]
        ),
      ),
    ),
  ),
];


List FlutterUseIntroCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Use.png"),
    CardTitle:"Use",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Why Using Flutter?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-Fast Developement\n-High Performance\n-API Very Consistent",)
            ]
        ),
      ),
    ),
  ),
];
//////////////////////////////////////// Listes of Keywords Section ////////////////////////////////
/*
var TKeywords1,TKeywords2,TKeywords3,TKeywords4,TKeywords5,TKeywords6,TKeywords7,TKeywords8,TKeywords9,TKeywords10,TKeywords11,TKeywords12;

void TranslateKeyWordsCompList() async{
  TKeywords1="What Is ";
  await TranslateWord(TKeywords1).then((value){ TKeywords1 =value; });

  TKeywords2="-User Interface Build Using Modern Framework\n\n-Everything Is A Widget(Text,Buttons,Layouts...)\n\n-Describe How The View Should Look (Configuration And State)";
  await TranslateWord(TKeywords2).then((value){ TKeywords2 =value; });

  TKeywords3="-Drawn only once when the Widget is loaded, which means we can’t redraw the Widget based on any events or user actions.\n\n-Used When We Want To Display Things That Doesn't Handle Any Event Example Page Of Texts.\n\n";
  await TranslateWord(TKeywords3).then((value){ TKeywords3 =value; });

  TKeywords4="-Can Be Loaded Many Times By Calling setState()\n\n-Require 2 classes, one is derived from Stateful Widget and another is derived from Generic State<>\n\n-Example: A Quiz That Has 2 Radio Buttons Once The User Check The Wanted Option We Have To Check The Answer So a Change To a State Has Been Made(Change Radio State From NonChecked To Checked)\n\n";
  await TranslateWord(TKeywords4).then((value){ TKeywords4 =value; });

  TKeywords5="Simple Widget That Maintains A Stack Of Routes (Terms,History of visited Pages)\n\n";
  await TranslateWord(TKeywords5).then((value){ TKeywords5 =value; });

  TKeywords6="Used To Go From An Page To Another Page , Example Login Page To Profile Page\n\n";
  await TranslateWord(TKeywords6).then((value){ TKeywords6 =value; });

  TKeywords7="Used To Get Rid Of The Last Visited Screen, Example: A Dialog Has Popped Up,Pop Will Close That Dialog\n\n";
  await TranslateWord(TKeywords7).then((value){ TKeywords7 =value; });

  TKeywords8="-Container For A Material App\n\n-Allow Us To Create Multiple Widgets Such As appBar ,  body , BottomNavigationBar ...\n\n";
  await TranslateWord(TKeywords8).then((value){ TKeywords8 =value; });

  TKeywords9="Specify If The Body Should Resize When The Keyboard Appear";
  await TranslateWord(TKeywords9).then((value){ TKeywords9 =value; });

  await TranslateWord(Scaffold_AvoidBottom_false_Explanation).then((value){ Scaffold_AvoidBottom_false_Explanation =value; });
 
  await TranslateWord(Scaffold_AvoidBottom_true_Explanation).then((value){ Scaffold_AvoidBottom_true_Explanation =value; });

  TKeywords10="-A Header That Display At The Top Of Scaffold.\n\n-Default Background Color Is Blue.\n\n-Default Text Color Is White.\n\n-An appBar Can Contain Icons.\n\n-An appBar Can Be Styled.\n\n";
  await TranslateWord(TKeywords10).then((value){ TKeywords10 =value; });

  TKeywords11="-MaterialApp Used For Creating material Design which allows us to use Scaffold\n\n-Describe The Tilte And The Theme That Will Be Shown When User Need To Close The App\n\n";
  await TranslateWord(TKeywords11).then((value){ TKeywords11 =value; });

  await TranslateWord(MaterialApp_Title_Theme_Explanation).then((value){ MaterialApp_Title_Theme_Explanation =value; });

}


*/


List WidgetKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"Widget",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is Flutter Widget ?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-User Interface Build Using Modern Framework\n\n-Everything Within Flutter Application Is A Widget(Text,Buttons,Layouts...)\n\n-Describe How The View Should Look(Configuration And State)",),
              SizedBox(height: 16,),
              Image.asset("assets/images/Widget.png",),

            ]
        ),
      ),
    ),
  ),
];

////////////////////////////////////////////////

List StatelessKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"Stateless Widget",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is a Stateless Widget ?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-Drawn only once when the Widget is loaded, which means we can’t redraw the Widget based on any events or user actions.\n\n-Used When We Want To Display Things That Doesn't Handle Any Event Example Page Of Texts.\n\n",),
            ]
        ),
      ),
    ),
  ),
];

//////////////////////////////////////////////////

List StatefullKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"Statefull Widget",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is a Statefull Widget ?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-Can Be Loaded Many Times By Calling setState()\n\n-Require 2 classes, one is derived from Stateful Widget and another is derived from Generic State<>\n\n-Example: A Quiz That Has 2 Radio Buttons Once The User Check The Wanted Option We Have To Check The Answer So a Change To a State Has Been Made(Change Radio State From NonChecked To Checked)\n\n",),
            ]
        ),
      ),
    ),
  ),
];
///////////////////////////////////////////////////

List NavigatorKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"Navigator",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is a Navigator?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Simple Widget That Maintains A Stack Of Routes (Terms,History of visited Pages)\n\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Navigator Push:",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Used To Go From An Page To Another Page , Example Login Page To Profile Page\n\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Navigator Pop:",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Used To Get Rid Of The Last Visited Screen, Example: A Dialog Has Popped Up,Pop Will Close That Dialog\n\n",),
            ]
        ),
      ),
    ),
  ),
];
///////////////////////////////////////////////////

List ScaffoldKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"Scaffold",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is Scaffold?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-Container For A Material App\n\n-Allow Us To Create Multiple Widgets Such As appBar , home , body , BottomNavigationBar ...\n\n",),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------

String Scaffold_AvoidBottom_false_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Scaffold_resizeToAvoidBottomPadding_false) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We There Is No Data Change Or Any Actions To Do\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Scaffold Set To Not Resize The Body\n\n"
    "-Body Widgets Will Be Shown In Next Courses You Can Keep Going!\n\n";

///////////////////////////////////////////////////

List Scaffold_AvoidBottom_false_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"resizeAvoidBottomPadding:",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Specify If The Body Should Resize When The Keyboard Appear",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "MaterialApp(\n"
                    " theme:ThemeData.light(),\n"
                    " home:Scaffold(\n"
                    "  resizeToAvoidBottomPadding:false,\n"
                    "  //More Widgets Go Here\n"
                    " ),\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];
///////////////////////////////////////////////////

String Scaffold_AvoidBottom_true_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Scaffold_resizeToAvoidBottomPadding_true) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We There Is No Data Change Or Any Actions To Do\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Scaffold Set To Resize The Body\n\n"
    "-Body Widgets Will Be Shown In Next Courses You Can Keep Going!\n\n";

List Scaffold_AvoidBottom_true_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"resizeAvoidBottomPadding:",),
              Divider(),
              CmpSubTitle2(SubTitle2:"Specify If The Body Should Resize When The Keyboard Appear",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "MaterialApp(\n"
                    " theme:ThemeData.light(),\n"
                    " home:Scaffold(\n"
                    "  resizeToAvoidBottomPadding:true,\n"
                    "  //More Widgets Go Here\n"
                    " ),\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];
///////////////////////////////////////////////////
List AppBarKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"AppBar",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is An AppBar?",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-A Header That Display At The Top Of Scaffold.\n\n-Default Background Color Is Blue.\n\n-Default Text Color Is White.\n\n-An appBar Can Contain Icons.\n\n-An appBar Can Be Styled.\n\n",),
            ]
        ),
      ),
    ),
  ),
];
///////////////////////////////////////////////////
List MaterialAppKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("assets/images/Keyword.png"),
    CardTitle:"Material App",
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is An MaterialApp?",),
              Divider(),
              CmpSubTitle2(
                SubTitle2:
                "-MaterialApp Used For Creating material Design which allows us to use Scaffold\n\n"
                    "-Describe The Tilte And The Theme That Will Be Shown When User Need To Close The App\n\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

String MaterialApp_Title_Theme_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MaterialAppTitleTheme) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We There Is No Data Change Or Any Actions To Do\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-title Set To Demo\n\n"
    "-Theme To Teal\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Body Has A Centered Text!\n\n";
///////////////////////////////////////////////////
List MaterialApp_Title_Theme_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Material App:",),
              Divider(),
              CmpSubTitle2(SubTitle2:"-title Show As Text\n-theme SetThe Color Of The Header\n\nHere title Set To Demo And Theme To Teal\n",),
              Image.asset("assets/images/MaterialAppTitleTheme.png"),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "MaterialApp(\n"
                    " debugShowCheckedModeBanner:false,\n"
                    " title:'Demo',\n"
                    " theme:ThemeData(\n"
                    "  primaryColor:Colors.teal,\n"
                    " ),\n"
                    " home:Scaffold(\n"
                    "  //More Widgets Go Here\n"
                    " ),\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];












