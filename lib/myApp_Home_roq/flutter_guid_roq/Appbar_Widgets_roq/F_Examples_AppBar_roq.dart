import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:backdrop/backdrop.dart';
import 'dart:math' as math;


import 'package:meta/meta.dart';

import '../../../Updated_plugins_roq/fluttertoast_roq2024.dart';
import '../../../myApp_Data_Settings_roq/Utils_roq.dart';


///////////////////////////////////// Baisc AppBar ////////////////////////
///////////////////////// Example 1 ====> Baisc AppBar
class AppBar_Roq_Ex1 extends StatelessWidget {
  const AppBar_Roq_Ex1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Appbar_roq",
        debugShowCheckedModeBanner: false,
        home:Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
        ),
    );
  }
}


/////////////////////////End Example1 ====> Baisc AppBar
///////////////////////// Example 2 ====> Baisc AppBar

class AppBar_Roq_Ex2 extends StatelessWidget {
  const AppBar_Roq_Ex2({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    TextButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Action 1'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Action 2'),
          )
        ],
      ),
    );
  }
}

/////////////////////////End Example2 ====> Baisc AppBar


//////////////////////////////////// Sliver AppBar Examples //////////////
//////////////////////////// Example 1
class SliverAppBar_Roq_Example_11 extends StatelessWidget {
  const SliverAppBar_Roq_Example_11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Scroll view for Sliver app bar for giving custom scroll behaviour
      body: CustomScrollView(
        slivers: <Widget>[
          ///First sliver is the App Bar
          SliverAppBar(
            ///Properties of app bar
            ///
            /// Color of app bar when it is collapsed
            backgroundColor: Theme.of(context).primaryColor,

            /// Set to false so that appbar is always invisible after
            /// collapsing
            /// If set to true here, the app bar will expand as soon as you
            /// start scrolling up even if you haven't reached the top
            floating: false,

            /// To make the app bar visible at all times after collapsing
            /// we set pinned to true
            pinned: true,
            expandedHeight: 200.0,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "SliverAppBar Widget",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: Utils.ubuntuRegularFont),
              ),
              background: Container(
                color: Colors.lightBlue,
              ),
            ),
           /* actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CodeScreen(code: Code.sliverAppBarCode),
                  ),
                ),
              )
            ],*/
          ),

          ///Next sliver is the Sliver list that is used here to
          ///allow the user to scroll and observe the collapsing
          ///behaviour of SliverAppBar widget
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildListDelegate(
              [
                listItem("List item 1", context),
                listItem("List item 2", context),
                listItem("List item 3", context),
                listItem("List item 4", context),
                listItem("List item 5", context),
                listItem("List item 6", context),
                listItem("List item 7", context),
                listItem("List item 8", context),
                listItem("List item 9", context),
                listItem("List item 10", context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem(String title, BuildContext context) => Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          //2025-------------------color: Theme.of(context).backgroundColor,
          color: Theme.of(context).colorScheme.surface,
          width: 1.0,
        ),
      ),
    ),
    child: Center(
      child: Text(
        "$title",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily: Utils.ubuntuRegularFont),
      ),
    ),
  );
}
//////////////////////////// Example 2
class SliverAppbar_Roq_Example2 extends StatelessWidget {
  const SliverAppbar_Roq_Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                leading:
                Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () =>
                            showToast_fun_Roq("You Clicked leading setting icon"),
                        icon: Icon(Icons.settings),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () =>
                              showToast_fun_Roq("You Clicked leading schedule icon"),
                          icon: Icon(Icons.schedule),
                        ),
                      )
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () =>
                        showToast_fun_Roq("You Clicked actions setting icon"),
                    icon: Icon(Icons.settings),
                  ),
                  IconButton(
                    onPressed: () =>
                        showToast_fun_Roq("You Clicked actions schedule icon"),
                    icon: Icon(Icons.schedule),
                  ),

                ],
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.yellowAccent,
                        Colors.black54,
                        Colors.yellowAccent,
                      ])),
                ),
                //-----------------------------
                centerTitle: true,
                //-------------------------------
                title: Text(
                  "SliverAppBar shape1",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                backgroundColor: Colors.pink,
              )
            ],
          ),

        ));
  }

  showToast_fun_Roq(msg_roq) {
    Fluttertoast.showToast(
        msg: msg_roq,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.yellowAccent,
        fontSize: 16.0
    );
  }

}

/////////////////////////////////// Custom Backdrop AppBar Example /////////



void main() {
  runApp(new CustomBackDrop_Roq());
}

class CustomBackDrop_Roq extends StatefulWidget {
  const CustomBackDrop_Roq({Key? key}) : super(key: key);

  @override
  _CustomBackDropState createState() => _CustomBackDropState();
}
class _CustomBackDropState extends State<CustomBackDrop_Roq> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Backdrop Demo',
      home: BackdropScaffold(
        appBar: BackdropAppBar(
          title: const Text("Backdrop Example"),
          actions: const <Widget>[
            BackdropToggleButton(
              icon: AnimatedIcons.list_view,
            )
          ],
        ),
        backLayer: const Center(
          child: Text("Back Layer"),
        ),
        subHeader: const BackdropSubHeader(
          title: Text("Sub Header"),
        ),
        frontLayer: const Center(
          child: Text("Front Layer"),
        ),
      ),
    );
  }
}
////////////////////////// CustomBackdrop Example2

