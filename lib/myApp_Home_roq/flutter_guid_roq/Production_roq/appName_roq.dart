import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/moduleClasses_roq.dart';
import '../../../myApp_adapter_roq/production_roq.dart';

typedef void OnError(Exception exception);
class AppName_Roq extends StatefulWidget {
  const AppName_Roq({Key? key}) : super(key: key);

  @override
  _AppName_RoqState createState() => _AppName_RoqState();
}

class _AppName_RoqState extends State<AppName_Roq> {
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CmpIntroPage(
        Title:"Change App Name",
       // BackRoute:"/Advanced9",
       // NextRoute:"/Production_App_Icon",
        ItemList:Production_AppName_CompList);
  }
}
