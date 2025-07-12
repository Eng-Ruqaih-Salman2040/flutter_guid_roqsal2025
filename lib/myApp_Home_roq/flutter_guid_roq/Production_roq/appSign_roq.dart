import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/moduleClasses_roq.dart';
import '../../../myApp_adapter_roq/production_roq.dart';

typedef void OnError(Exception exception);
class AppSign_Roq extends StatefulWidget {
  const AppSign_Roq({Key? key}) : super(key: key);

  @override
  _AppSign_RoqState createState() => _AppSign_RoqState();
}

class _AppSign_RoqState extends State<AppSign_Roq> {
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        Title:" App Sign",
        // BackRoute:"/Advanced9",
        // NextRoute:"/Production_App_Icon",
        ItemList:Production_AppSign_CompList);
  }
}

