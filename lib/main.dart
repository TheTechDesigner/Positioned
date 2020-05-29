import 'package:animated_positioned/images.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Color(0xFFFAF2FB),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Animated Positioned';

  double posLeft = 0;
  double posRight = 0;
  double posTop = 0;
  double posBottom = 0;

  void _movewidget(String pos) {
    setState(() {
      if (pos == 'Up') {
        posLeft = 0;
        posRight = 0;
        posTop = 0;
        posBottom = 150.0;
      } else if (pos == 'Right') {
        posLeft = 150.0;
        posRight = 0;
        posTop = 0;
        posBottom = 0;
      } else if (pos == 'Down') {
        posLeft = 0;
        posRight = 0;
        posTop = 150.0;
        posBottom = 0;
      } else if (pos == 'Left') {
        posLeft = 0;
        posRight = 150.0;
        posTop = 0;
        posBottom = 0;
      } else if (pos == 'Center') {
        posLeft = 0;
        posRight = 0;
        posTop = 0;
        posBottom = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                left: posLeft,
                right: posRight,
                top: posTop,
                bottom: posBottom,
                duration: Duration(seconds: 1),
                child: Center(
                  child: Image(
                    image: AssetImage(deadPool),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 180.0,
                left: 180.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  highlightElevation: 0.0,
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    _movewidget("Up");
                  },
                  child: Icon(
                    Icons.arrow_drop_up,
                    size: 48.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 110.0,
                left: 250.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  highlightElevation: 0.0,
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    _movewidget("Right");
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 48.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 40.0,
                left: 180.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  highlightElevation: 0.0,
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    _movewidget("Down");
                  },
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 48.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 110.0,
                left: 110.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  highlightElevation: 0.0,
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    _movewidget("Left");
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 48.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 110.0,
                left: 180.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  highlightElevation: 0.0,
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    _movewidget("Center");
                  },
                  child: Icon(
                    Icons.stop,
                    size: 32.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
