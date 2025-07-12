import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Shared_Preferences_Roq());
}



class Shared_Preferences_Roq extends StatefulWidget {
  const Shared_Preferences_Roq({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<Shared_Preferences_Roq> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name="";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences"),
      ),
      body:Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[ElevatedButton(
                child:Text("Save"),
                onPressed: ()
                {
                  save();
                },
              ),
                ElevatedButton(
                  child:Text("retrieve"),
                  onPressed: ()
                  {
                    retrieve();
                  },
                ),
                ElevatedButton(
                  child:Text("Delete"),
                  onPressed: ()
                  {
                    delete();
                  },
                )]),
          ),
              Text(name, style: TextStyle(fontSize: 20),),


            ],
          )
      ),
    );
  }
  String namekey="username";
  save() async
  {
    /*setString(String key, String value)
    setInt(String key, int value):
    setDouble(String key, double value)
    setStringList(String key, List value)
  setBool(String key, bool value)*/
    prefs = await SharedPreferences.getInstance();
    prefs.setString(namekey, controller.text.toString());

  }

  retrieve() async{
    /*getString(String key)
    getInt(String key)
    getDouble(String key)
    getStringList(String key)
    getBool(String key)*/
    prefs = await SharedPreferences.getInstance();

    setState(() {
      name = prefs.getString(namekey)!;
    });
  }

  delete() async
  {
    prefs = await SharedPreferences.getInstance();

    setState(() {
      prefs.remove(namekey);
      name = "";
    });
  }
}



