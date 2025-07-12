import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:share_plus/share_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FlutterProg_QuickGuideRoq extends StatefulWidget {
  const FlutterProg_QuickGuideRoq({Key? key}) : super(key: key);

  @override
  State<FlutterProg_QuickGuideRoq> createState() => _FlutterProg_QuickGuideRoqState();
}

class _FlutterProg_QuickGuideRoqState extends State<FlutterProg_QuickGuideRoq> {
  void _handleURLButtonPress(BuildContext context, String url, String title) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewPage_Roq(url, title)));
  }
  late Future<void> _launched;
  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        forceSafariVC: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   /* _handleURLButtonPress(
        context, "https://www.tutorialspoint.com/dart_programming/dart_programming_quick_guide.htm", "Dart Quick Guide");
*/
    /* _launched = _launchInWebViewOrVC(
        "https://www.tutorialspoint.com/dart_programming/dart_programming_quick_guide.htm");
*/  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Builder(builder: (BuildContext context) =>  WebViewPage_Roq("https://www.tutorialspoint.com/dart_programming/dart_programming_quick_guide.htm", "Dart Quick Guide")
      )  );
    //https://www.tutorialspoint.com/dart_programming/dart_programming_quick_guide.htm
  }
}
class WebViewPage_Roq extends StatefulWidget {
  final String url;
  final String title;

  WebViewPage_Roq(this.url, this.title);

  @override
  WebViewPage_RoqState createState() =>
      WebViewPage_RoqState(this.url, this.title);
}

class WebViewPage_RoqState extends State<WebViewPage_Roq> {
  final String url;
  final String title;

  WebViewPage_RoqState(this.url, this.title);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    //if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    //if (Platform.isAndroid) {
      // if (Platform.isAndroid) {
      //   WebViewPlatform.instance = AndroidWebView();
     /* WebViewPlatform.instance = AndroidWebViewPlatform.createNew(
        AndroidWebViewPlatformDelegate(),*/
     // );
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Column(children: [

          Expanded(
              child:

              WebViewWidget(controller:
              ( WebViewController()
                ..setJavaScriptMode(JavaScriptMode.unrestricted)
                ..setBackgroundColor(const Color(0x00000000))
                ..setNavigationDelegate(
                  NavigationDelegate(
                    onProgress: (int progress) {
                      // Update loading bar.
                    },

                    onPageStarted: (String url) {},
                    onPageFinished: (String url) {},
                    onWebResourceError: (WebResourceError error) {},
                    onNavigationRequest: (NavigationRequest request) {
                      if (request.url.startsWith('https://www.youtube.com/')) {
                        return NavigationDecision.prevent;
                      }
                      return NavigationDecision.navigate;
                    },


                  ),


                )
                ..loadRequest(Uri.parse(this.url)))!)

            /*WebView(
                  initialUrl: this.url,
                  javascriptMode: JavascriptMode.unrestricted
              )*/
          )
              //2025 Begine<----------------------------------------------------------------------------------
              /*WebView(
                  allowsInlineMediaPlayback: true,*//*gestureNavigationEnabled: true,*//*
                  initialUrl: this.url,
                  javascriptMode: JavascriptMode.unrestricted)*/

          //2025 Begine<----------------------------------------------------------------------------------


        ])
    );
  }
}
///////////////////////////// Dart Resource //////////////////////////////
const String DartResources1_markdownSrc = '''
Useful Resources
===================================

The following resources contain additional information on Dart Programming. Please use them to get more in-depth knowledge on this topic.

Useful Video Courses
--------------------

''';
const String DartResources2_markdownSrc = '''

 ## Useful eBooks
''';
const String DartResources3_markdownSrc = '''

 ## Useful Websites
''';

class Dart_Resources_Roq extends StatefulWidget {
  const Dart_Resources_Roq({Key? key}) : super(key: key);

  @override
  State<Dart_Resources_Roq> createState() => _Dart_Resources_RoqState();
}

class _Dart_Resources_RoqState extends State<Dart_Resources_Roq> {
  late Future<void> _launched;
  late int bookLinkNum;

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        forceSafariVC: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _onTapLink(String text, String? href, String title) async {
      if (href == null) return;
      if (await canLaunch(href)) {
        launch(href);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Wrong address: $href'),
          ),
        );
      }
    }

    return Scaffold(
      /*appBar: AppBar(
          title: Text("Dart Programming Tutorial"),
        ),*/
      body: ListView(
        children: [
          buildMakdown_FunRoq(_onTapLink,1,1),
          Column(
            children: [
              GestureDetector(
                child: Card(
                  child: Image.asset(
                    'assets/images/Dart_vido1.png',
                  ),
                ),
                onTap: ()=> setState(() {
                  _launched = _launchInWebViewOrVC(
                      "https://www.tutorialspoint.com/complete_google_dart_programming_bootcamp/index.asp");
                }),
              ),
              GestureDetector(
                child: Image.asset('assets/images/Dart_vido2.png'),
                onTap: () =>
                    setState(() {
                      _launched = _launchInWebViewOrVC(
                          "https://www.tutorialspoint.com/understand_concepts_of_dart_programming_quickly_and_easily/index.asp");
                    }),
              ),
              buildMakdown_FunRoq(_onTapLink,0,2),
            ],
          ),
          Column(
            children: [
              buildEbook_ResFun_Roq(1),
              buildEbook_ResFun_Roq(2),
              buildEbook_ResFun_Roq(3),
              buildMakdown_FunRoq(_onTapLink,0,3),


            ],
          ),

      Column(
        children: [
          buildUI_DartWebS_FunRoq("Dart Academy",4,"https://dart.academy/"),
          buildUI_DartWebS_FunRoq("Tutorialspoint",5,'https://www.tutorialspoint.com/dart_programming/index.htm'),//
          buildUI_DartWebS_FunRoq("Dart documentation",6,'https://dart.dev/guides'),//
          buildUI_DartWebS_FunRoq("GeeksforGeeks",7,'https://www.geeksforgeeks.org/dart-tutorial/') //
        ],
      )
        ],
      ),
    );
  }

  Padding buildUI_DartWebS_FunRoq(String DW_Name,int numWSlink,String linkName) {
    return Padding(
          // <-- match_parent
          //height: 332, // <-- match-parent
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Card(
            elevation: 2,
          child: ListTileTheme(
            contentPadding: const EdgeInsets.all(10),
            //iconColor: Colors.red,
            //textColor: Colors.black,
            //tileColor: Colors.yellow[100],
            style: ListTileStyle.list,
            dense: true,
                child: ListTile(
                  title: Text(DW_Name,/*style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)*/),
                    leading:Icon(Icons.arrow_forward_ios_outlined),
                  //subtitle: Text('Learn about Dart and Flutter from the experts. Dart Academy is a growing collection of Dart/Flutter articles, tutorials, and videos, ranging from beginner to advanced content.'),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {DartResour_LinkFunRoq(numWSlink,linkName);}, icon: const Icon(Icons.open_in_new)),
                      IconButton(
                          onPressed:()=>DartResour_LinkFunRoq(numWSlink+100,linkName), icon: const Icon(Icons.share)),

                    ],
                  ),
                ),
              ),
        ),);
  }

  Container buildMakdown_FunRoq(Future<void> _onTapLink(String text, String? href, String title),int first,int second) {
    return Container(
              height: first==1?150:50,
              width: double.infinity,
              child: Scrollbar(
                child: Markdown(
                  data: first==1?DartResources1_markdownSrc
                  :first==0&&second==2?DartResources2_markdownSrc :DartResources3_markdownSrc,
                  onTapLink: _onTapLink,
                  selectable: true,
                  //syntaxHighlighter: _MyDartSyntaxHighligher(),
                  //// We use [GitHub flavored Markdown]: https://github.github.com/gfm/.
                  extensionSet: md.ExtensionSet(
                    /*blockSyntaxes=*/
                    md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                    /*inlineSyntaxes=*/
                    md.ExtensionSet.gitHubFlavored.inlineSyntaxes,
                  ),
                ),
              ),
            );
  }

  GestureDetector buildEbook_ResFun_Roq(int bookNum) {
    return GestureDetector(
        child:
        SizedBox(
            width: 232, // <-- match_parent
            //height: 332, // <-- match-parent
            child: Card(
              elevation: 2,
              child: Column(children: [
              Image.asset(bookNum==1?'assets/images/Dart_ebook1.jpg'
                  :bookNum==2?'assets/images/Dart_ebook2.jpg':'assets/images/Dart_ebook3.jpg'),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      setState(() {
                        bookNum == 1 ? bookLinkNum = 1 : bookNum == 2 ?
                        bookLinkNum = 2 : bookLinkNum = 3;
                        DartResour_LinkFunRoq(bookLinkNum);
                      }),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white, // Background color
                ),
                child: const Text(
                  'More Detaile', style: TextStyle(fontSize: 18),),
              ),
            ),
            ]))),
    onTap:()=> setState(() {
      bookNum == 1 ? bookLinkNum = 1 : bookNum == 2 ?
      bookLinkNum = 2 : bookLinkNum = 3;
      DartResour_LinkFunRoq(bookLinkNum);
    }),
    );
  }

  void DartResour_LinkFunRoq(int bookLNum, [linkName]) =>
      setState(() {
        bookLNum == 1 ? _launched = _launchInWebViewOrVC(
            "https://www.raywenderlich.com/books/dart-apprentice")
            : bookLNum == 2 ? _launched = _launchInWebViewOrVC(
            "https://link.springer.com/book/10.1007/978-1-4842-5562-9")
            :bookLNum==3? _launched = _launchInWebViewOrVC(
            "https://www.tutorialspoint.com/ebook/dart_programming_tutorial/index.asp"):
        /////////////////////////// Dart WebSites Links
        bookLNum==4||bookLNum==5||bookLNum==6||bookLNum==7?_launched = _launchInWebViewOrVC(
            linkName):
        //Share.share('check out my website $linkName');
        _onShareWithResult(context,linkName);
        //bookLinkNum==104||bookLinkNum==105||bookLinkNum==106||bookLinkNum==107?





      });

  void _onShare(BuildContext context,String LinkN_Sh) async {
    // A builder is used to retrieve the context immediately
    // surrounding the ElevatedButton.
    //
    // The context's `findRenderObject` returns the first
    // RenderObject in its descendent tree when it's not
    // a RenderObjectWidget. The ElevatedButton's RenderObject
    // has its position and size after it's built.
    final box = context.findRenderObject() as RenderBox?;

   /* if (imagePaths.isNotEmpty) {
      await Share.shareFiles(imagePaths,
          text: text,
          subject: subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    } else {*/
      await Share.share('check out my website: $LinkN_Sh', subject: 'Look what I made!',
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
   // }
  }

  void _onShareWithResult(BuildContext context,String LinkN_Sh) async {
    final box = context.findRenderObject() as RenderBox?;
    ShareResult result;

      result = await Share.share('check out my website: $LinkN_Sh', subject: 'Look what I made!',
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Share result: ${result.status}"),
    ));
  }
}

///////////////////////////////////////////////////////////////
class Dart_Discussion_Roq extends StatelessWidget {
  const Dart_Discussion_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
