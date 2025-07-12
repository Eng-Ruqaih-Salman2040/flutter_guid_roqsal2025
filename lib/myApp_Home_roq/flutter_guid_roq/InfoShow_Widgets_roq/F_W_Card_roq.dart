import 'package:flutter/material.dart';

class Card_Widget_roq extends StatelessWidget {
  const Card_Widget_roq({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  color: Colors.red,
                  // The elevation determines shade.
                  elevation: 10.0,
                  child: SizedBox(
                    height: 100.0,
                    child: Row(
                      children: const <Widget>[
                        Expanded(child: Text('Sample Card 1')),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Sample Card 2'),
                    subtitle: Text('Default Elevation'),
                  ),
                ),
                Card(
                    elevation: 8,
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 3'),
                      subtitle: Text('Elevation - 8'),
                    )),
                Card(
                    elevation: 16,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 3'),
                      subtitle: Text('Elevation - 16'),
                    )),
                Card(
                    elevation: 24,
                    color: Colors.pink,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 4'),
                      subtitle: Text('Elevation - 24'),
                    )),
                Stack(
                  children: <Widget>[
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 1 in Stack'),
                      subtitle: Text('Default Elevation'),
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 8),
                      child: Card(
                          elevation: 8,
                          child: ListTile(
                            leading: Icon(Icons.camera),
                            title: Text('Sample Card 2 in Stack'),
                            subtitle: Text('Elevation - 8'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 32, 16, 16),
                      child: Card(
                          elevation: 16,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 3 in Stack'),
                            subtitle: Text('Elevation - 16'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 48, 24, 24),
                      child: Card(
                          elevation: 24,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 4 in Stack'),
                            subtitle: Text('Elevation - 24'),
                          )),
                    ),
                  ],
                ),

                Card(
                  color: Colors.green,
                  margin: const EdgeInsets.all(20.0),

                  elevation: 0.0,
                  child: SizedBox(
                    height: 100.0,
                    child: InkWell(
                      splashColor: Colors.deepOrange,
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: const <Widget>[
                            Expanded(
                              child: Text('Sample Card 5 (with Inkwell effect on tap)'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.elliptical(40.0, 80.0),
                    ),
                  ),
                  child: SizedBox(
                    height: 100.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                            child: Text('Sample Card 6 (with custom border radius)'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 180.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Image.asset(
                                'res/images/material_design_4.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sample Card 7 (complex example)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {},
                            child: const Text('SHARE'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('EXPLORE'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
