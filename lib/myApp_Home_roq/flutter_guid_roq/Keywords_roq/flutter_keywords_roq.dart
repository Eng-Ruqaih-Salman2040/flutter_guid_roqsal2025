import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/moduleClasses_roq.dart';
import '../../../myApp_adapter_roq/production_roq.dart';
class Key_Widgets_Roq extends StatelessWidget {
  const Key_Widgets_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        //Title:" App Sign",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:WidgetKeywordsCompList);

  }
}
/////////////////////////////////////
class Key_Statless_Roq extends StatelessWidget {
  const Key_Statless_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:StatelessKeywordsCompList);
  }
}
///////////////////////////////////////
class Key_Statfull_Roq extends StatelessWidget {
  const Key_Statfull_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:StatefullKeywordsCompList);
  }
}
//////////////////////////////////////////
class Key_Navigation_Roq extends StatelessWidget {
  const Key_Navigation_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        //Title:" App Sign",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:NavigatorKeywordsCompList);
  }
}
///////////////////////////////////////////////////////
class Key_Scafolld_Roq extends StatelessWidget {
  const Key_Scafolld_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:ScaffoldKeywordsCompList);
  }
}
//////////////////////////////////////////////////////
class Key_Scafolld_ResizFalse_Roq extends StatelessWidget {
  const Key_Scafolld_ResizFalse_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:Scaffold_AvoidBottom_false_list);
  }
}
///////////////////////////////////////////////////////
class Key_Scafolld_ResizTrue_Roq extends StatelessWidget {
  const Key_Scafolld_ResizTrue_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        //Title:" App Sign",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:Scaffold_AvoidBottom_true_list);
  }
}
///////////////////////////////////////////////////
class Key_AppBar_Roq extends StatelessWidget {
  const Key_AppBar_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:AppBarKeywordsCompList);
  }
}
///////////////////////////////////////////////////////
class Key_MaterialApp_Roq extends StatelessWidget {
  const Key_MaterialApp_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:MaterialAppKeywordsCompList);
  }
}
/////////////////////////////////////////////////
class Key_MaterialApp_Title_Theme_Roq extends StatelessWidget {
  const Key_MaterialApp_Title_Theme_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
      //Title:" App Sign",
      // BackRoute:"/Advanced9",
      // NextRoute:"/Production_App_Icon",
        ItemList:MaterialApp_Title_Theme_list);
  }
}





