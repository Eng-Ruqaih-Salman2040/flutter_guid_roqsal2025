import 'package:flutter/material.dart';

class ScrollController_Roq extends StatefulWidget {

  @override
  _ScrollController_RoqState createState() => _ScrollController_RoqState();

  const ScrollController_Roq();
}

class _ScrollController_RoqState extends State<ScrollController_Roq> {
  ScrollController _controller = new ScrollController(
    initialScrollOffset: 99,
    keepScrollOffset: true,
  );
  bool toTopBtn = false;
  int count = 50;
  double height = 50;

  @override
  void initState() {
    super.initState();
    _controller.addListener(this.scrollEvent);
  }

  void scrollEvent() {
    print(_controller);
    var _status = false;
    if (_controller.offset > 100) {
      _status = true;
    } else {
      _status = false;
    }
    setState(() {
      this.toTopBtn = _status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                controller: _controller,
                itemCount: this.count,
                itemExtent: this.height,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        ' $index Scroll up and the back to top icon will appear'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: !this.toTopBtn
          ? null
          : FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.arrow_upward,
          color: Colors.blue,
        ),
        onPressed: () {
          _controller.jumpTo(-50);
        },
      ),
    );
  }
}


