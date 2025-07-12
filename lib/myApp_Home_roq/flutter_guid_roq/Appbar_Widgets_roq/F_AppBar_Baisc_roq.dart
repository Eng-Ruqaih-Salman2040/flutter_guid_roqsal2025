import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

import '../../../Updated_plugins_roq/fluttertoast_roq2024.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';



class Appbar_Widget_Roq extends StatefulWidget {
  const Appbar_Widget_Roq({Key? key}) : super(key: key);

  @override
  State<Appbar_Widget_Roq> createState() => _Appbar_Widget_RoqState();
}

class _Appbar_Widget_RoqState extends State<Appbar_Widget_Roq> {
  int choose_roq=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          choose_roq==0?buildAppBar_default_Roq():
          choose_roq==1?buildAppBar_simple_FunRoq():
          choose_roq==2? buildAppBar_flexibleSpace_FunRoq():

          choose_roq==3?buildAppBar_flexibleSpace2_FunRoq():
          choose_roq==4?buildAppBar_centerTitle_FunRoq():
          choose_roq==5?buildAppBar_leading_FunRoq():
          choose_roq==6?buildAppBar_action_FunRoq():
          buildAppBar_leading_action_FunRoq(),


      body: buildCenter(),
    );
  }

   buildCenter() {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: [
        buildText_funroq('Example 1 : Defulte(null) AppBar '),
        buildButton_Funroq(0),
        buildText_funroq('Example 2 : Simple AppBar '),
        buildButton_Funroq(1),
        buildText_funroq('Example 3 :AppBar with FlexibleSpace shap1  '),
        buildButton_Funroq(2),
        buildText_funroq('Example 4 :AppBar with FlexibleSpace shap2  '),
        buildButton_Funroq(3),
        buildText_funroq('Example 5 :AppBar with CenterTitle '),
        buildButton_Funroq(4),
        buildText_funroq('Example 6 :AppBar With leading'),
        buildButton_Funroq(5),
        buildText_funroq('Example 7 :AppBar With actions'),
        buildButton_Funroq(6),
        buildText_funroq('Example 8 :leading <-- AppBar --> actions'),
        buildButton_Funroq(7),



      ],
    );
  }

   Center buildButton_Funroq(int num_exroq) {
     return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () { setState(() {
            choose_roq=num_exroq;

          }); },
          child: const Text('Show '),
        ),
      );
   }

  AppBar buildAppBar_simple_FunRoq() {
    return
      AppBar(
      title: Text(
        "AppBar shape1",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.amber,
    );
  }

  AppBar buildAppBar_flexibleSpace_FunRoq() {
    return AppBar(
      flexibleSpace:
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.yellowAccent,
              Colors.black,

            ])),
      ),
      title:  Text(
        "AppBar & flexibleSpace",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Colors.amber,
    );
  }
  AppBar buildAppBar_flexibleSpace2_FunRoq() {
    return AppBar(
      flexibleSpace: Container(
        height: 160,
        child: FlexibleSpaceBar(
          title: const Text("FlexibleSpace"),
          background: Image.asset(
            'res/images/material_design_3.png',
            fit: BoxFit.fill,
            height: 160,

          ),
        ),
      ),
      /*flexibleSpace:
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.yellowAccent,
              Colors.black,

            ])),
      ),
      title:  Text(
        "AppBar & flexibleSpace",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Colors.amber,*/
    );
  }

  //////////////////////////////// Center /////////////////////////////
  AppBar buildAppBar_centerTitle_FunRoq() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.yellowAccent,
              Colors.black,
            ])),
      ),
      //-----------------------------
      centerTitle: true,
      //-------------------------------
      title: Text(
        "AppBar shape1",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.pink,
    );
  }

  //////////////////////////////// Leading Icons /////////////////////////////
  AppBar buildAppBar_leading_FunRoq() {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
          children: [
            IconButton(
              onPressed:()=>showToast_fun_Roq("You Clicked leading setting icon"),
              icon: Icon(Icons.settings),
            ),

            Expanded(
              child: IconButton(
                onPressed: ()=>showToast_fun_Roq("You Clicked leading schedule icon"),
                icon: Icon(Icons.schedule),
              ),
            ),

          ],
        ),
      ),
   /*   flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellowAccent,
              Colors.black54,
              Colors.yellowAccent,
            ])),
      ),*/
      //-----------------------------
      centerTitle: true,
      //-------------------------------
      title: Text(
        "AppBar",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.black12,
    );
  }
  ///////////////////////////////// Action Icones /////////////////////////
  AppBar buildAppBar_action_FunRoq() {
    return AppBar(
      actions: [
        IconButton(
          onPressed:()=>showToast_fun_Roq("You Clicked actions setting icon"),
          icon: Icon(Icons.settings,color: Colors.black),
        ),
        IconButton(
          onPressed: ()=>showToast_fun_Roq("You Clicked actions schedule icon"),
          icon: Icon(Icons.schedule,color: Colors.black,),
        ),

      ],
      /*flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellowAccent,
              Colors.black54,
              Colors.yellowAccent,
            ])),
      ),*/
      //-----------------------------
      //centerTitle: true,
      //-------------------------------
      title: Text(
        "AppBar",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.cyan.shade50,
    );
  }
  ////////////////////////////////// Leading and action /////////////////
  AppBar buildAppBar_leading_action_FunRoq() {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
          children: [
            IconButton(
              onPressed:()=>showToast_fun_Roq("You Clicked leading setting icon"),
              icon: Icon(Icons.settings),
            ),

            Expanded(
              child: IconButton(
                onPressed: ()=>showToast_fun_Roq("You Clicked leading schedule icon"),
                icon: Icon(Icons.schedule),
              ),
            ),

          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed:()=>showToast_fun_Roq("You Clicked actions setting icon"),
          icon: Icon(Icons.settings),
        ),
        IconButton(
          onPressed: ()=>showToast_fun_Roq("You Clicked actions schedule icon"),
          icon: Icon(Icons.schedule),
        ),

      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellowAccent.shade100,
              Colors.black45,
              Colors.yellowAccent.shade100,
            ])),
      ),
      //-----------------------------
      centerTitle: true,
      //-------------------------------
      title: Text(
        "AppBar shape1",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.pink,
    );
  }

  showToast_fun_Roq(msg_roq)
  {
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

  buildAppBar_default_Roq() {
    return null;
  }
}
