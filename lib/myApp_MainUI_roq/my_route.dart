
import 'package:backdrop/backdrop.dart';
import 'package:day_night_switcher/day_night_switcher.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:widget_with_codeview/widget_with_codeview.dart';


import '../myApp_Data_Settings_roq/my_app_settings.dart';
import '../myApp_Data_Settings_roq/thems_roq.dart';
import 'about.dart';
import '../myApp_Data_Settings_roq/constants.dart'
    show APP_NAME, APP_VERSION, GITHUB_URL, PlatformType, kAppIcon, kAppIcondark, kIsOnMobile, kPlatformType;


import 'home_page.dart';
import 'my_route_search_delegate.dart';

class MyRoute extends StatelessWidget {
  static const _kFrontLayerMinHeight = 128.0;

  // Path of source file (relative to project root). The file's content will be
  // shown in the "Code" tab.
 // final String? sourceFilePath;
  final String sourceFilePath;

  // Actual content of the example.
  final Widget child;

  // Title shown in the route's appbar.
  // By default just returns routeName.
  final String? _title;

  // A short description of the route. If not null, will be shown as subtitle in
  // the home page list tile.
  final String description;

  // Returns a set of links {title:link} that are relative to the route. Can put
  // documention links or reference video/article links here.
  final Map<String, String> links;

  // Route name of a page, if missing, use ${child.runtimeType}.
  final String? _routeName;
  final Iterable<PlatformType> supportedPlatforms;
  // Rout DemoNum
  final int? indexdemo_roq;
  //var demotitle = [ 'Login App', 'Note App','Music Player App'];
  //final List<String> demotitle=[];
  //final List<String> _demotitle;
  const MyRoute({
    Key? key,
    required this.sourceFilePath,
    //this.sourceFilePath='',
    required this.child,
    String? title,
    this.indexdemo_roq=1000,
    //this.demotitle=[];
    this.description = '',
    this.links = const <String, String>{},
    String? routeName,
   // List<String>? demotitle,
    this.supportedPlatforms = PlatformType.values,
  })  : _title = title,
        _routeName = routeName,
       // _demotitle = demotitle ?? const [ 'Login App', 'Note App','Music Player App'],



        super(key: key);

  String get routeName {
    print("Rout Name is :${this.child.runtimeType.toString()}");
 return   this._routeName ?? '/${this.child.runtimeType.toString()}';

  }

////////////////////////////////////

  String get title {
   // if(indexdemo_roq==1000)
    return _title ?? this.routeName;
    /*else
      return _title ??_demotitle[this.indexdemo_roq];*/
  }






  @override
  Widget build(BuildContext context) {
    late Future<void> _launched;


    final IconButton? appbarLeading =


        (kIsOnMobile || this.routeName == Navigator.defaultRouteName)
            ? null
            : IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),);

    /*Use BackdropScaffold instead of the standard Scaffold in your app.
A backLayer and a frontLayer have to be defined for the backdrop to work.*/
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);
    bool ThemeType_roq=Provider.of<MyAppSettings>(context).isDarkMode;
    return BackdropScaffold(

      appBar: BackdropAppBar(
        /*BackdropToggleButton(
          icon: AnimatedIcons.list_view,
        ),*/
        title: SingleChildScrollView(

          scrollDirection: Axis.horizontal,
          child: Text(this.title),
        ),

        actions: _getAppbarActions(context),
        automaticallyImplyLeading: false,
        leading: appbarLeading,
      ),
      headerHeight: _kFrontLayerMinHeight,
      frontLayerBorderRadius: BorderRadius.zero,
      frontLayer:   Builder(
        builder: (BuildContext context) =>
        routeName == Navigator.defaultRouteName
            ? this.child
            :   WidgetWithCodeView(

          filePath: this.sourceFilePath!,
          //codeLinkPrefix: '$GITHUB_URL/blob/master',
          child: this.child,
          codeLinkPrefix: 'https://google.com?q=',
          iconBackgroundColor: Colors.white,
          iconForegroundColor: Colors.black,
          labelBackgroundColor: Theme.of(context).canvasColor,
          labelTextStyle:
          TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color),
          showLabelText: false,


        ),//Container(color: Colors.black,



        ),


      /*Builder(
        builder: (BuildContext context) =>
            routeName == Navigator.defaultRouteName
                ? this.child:  this.child
               *//* : WidgetWithCodeView(
        sourceFilePath: this.sourceFilePath!,
        codeLinkPrefix: ""*//**//*'$GITHUB_URL/blob/master'*//**//*,
        child: this.child,
      ),*//*
        *//* Builder(
        builder: (BuildContext context) =>
            routeName == Navigator.defaultRouteName
                ? this.child
                : WidgetWithCodeView(
                    sourceFilePath: this.sourceFilePath,
                    codeLinkPrefix: '$GITHUB_URL/blob/master',
                    child: this.child,
                  ),
      ),*//*

      ),*/

      backLayer: Container(
       color:ThemeType_roq?null:Colors.white70,//pSecondaryColor,
          child:_getBackdropListTiles(ThemeType_roq)),
    );
  }

  List<Widget> _getAppbarActions(BuildContext context) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);

    return <Widget>[
      //const BackdropToggleButton(),
      if (this.routeName == Navigator.defaultRouteName)
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            await showSearch<String>(
              context: context,
              delegate: MyRouteSearchDelegate(),
            );
          },
        ),
      if (this.routeName != Navigator.defaultRouteName)
        settings.starStatusOfRoute(this.routeName),
      if (this.links.isNotEmpty)
        PopupMenuButton(
          icon: Icon(Icons.info_outline),
          itemBuilder: (context) {
            return <PopupMenuItem>[
              for (MapEntry<String, String> titleAndLink in this.links.entries)
                PopupMenuItem(
                  child: ListTile(
                    title: Text(titleAndLink.key),
                    trailing: IconButton(
                      icon: const Icon(Icons.open_in_new),
                      tooltip: titleAndLink.value,
                      onPressed: () => url_launcher.launch(titleAndLink.value),
                    ),
                    onTap: () => url_launcher.launch(titleAndLink.value),
                  ),
                )
            ];
          },
        ),
    ];
  }

  ListView _getBackdropListTiles(bool ThemeType) {
    return ListView(
      padding: const EdgeInsets.only(bottom: _kFrontLayerMinHeight),
      children: <Widget>[
        ListTile(
          leading: ThemeType?
          ClipOval(child:kAppIcondark):ClipOval(child: kAppIcon),
/////////////////////////////
          /*Container(
      height: 64.0, width: 64.0,
            color: Colors.black,
            child: Stack(
              children: [
                Container(
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/dartIcon5.png',

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),*/
          /*ClipOval( //no need to provide border radius to make circular image
              child:*/
          /*ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child:
               kAppIcon,
            ),*/

          title: const Text(APP_NAME),
          subtitle: const Text(APP_VERSION),
        ),
        ...MyAboutRoute.kAboutListTiles,
        Consumer<MyAppSettings>(builder: (context, MyAppSettings settings, _) {
          return ListTile(
            onTap: () {},
            leading: DayNightSwitcherIcon(
              isDarkModeEnabled: settings.isDarkMode,
                dayBackgroundColor:Colors.white70,
              sunColor: pPrimaryColor,
              onStateChanged: (_) {},
            ),
            title: Text('Dark mode : ${settings.isDarkMode ? 'ON' : 'OFF'}'),
            trailing: DayNightSwitcher(sunColor: pPrimaryColor,
              dayBackgroundColor:Colors.white70,
              isDarkModeEnabled: settings.isDarkMode,
              onStateChanged: (bool value) => settings.setDarkMode(value),
            ),
          );
        }),
      ],
    );
  }
}


