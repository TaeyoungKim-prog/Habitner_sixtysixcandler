import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int counter = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '66 days challlenge - Candler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isChecked = false;
  var _unlighted = "assets/small_candle.png";
  var _lighted = "assets/small_candle_lighted.gif";
  var _bigCandle = "assets/candle_nolight.gif";
  var _yellowColor = const Color(0xffFDDB60);

  void _incrementCounter() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: _yellowColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("$counter"),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      Container(
                        child: TextField(),
                        width: 350,
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                  ),
                  Stack(
                    children: <Widget>[
                      Image.asset(_bigCandle),
                      Container(
                        padding: EdgeInsets.only(top: 100),
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                          iconSize: 50,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.camera),
                    backgroundColor: Colors.white,
                    splashColor: Colors.white,
                    tooltip: 'check',
                    onPressed: () {
                      setState(() {
                        _incrementCounter();
                        _bigCandle = "assets/candle_animated.gif";
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                  color: const Color(0xffFDDB60),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              alignment: Alignment.topLeft,
                              child: Image.asset("assets/canlder_crown.png")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Opacity(
                                  opacity: 0.0, child: Image.asset(_unlighted)),
                              (counter > 0)
                                  ? Image.asset(_lighted)
                                  : Image.asset(_unlighted),
                              (counter > 1)
                                  ? Image.asset(_lighted)
                                  : Image.asset(_unlighted),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Container(
                        height: 3,
                        color: Colors.white,
                      ),
                      Container(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            (counter > 2)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                            (counter > 3)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                            (counter > 4)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                          ]),
                      Container(
                        height: 10,
                      ),
                      Container(
                        height: 3,
                        color: Colors.white,
                      ),
                      Container(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            (counter > 5)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                            (counter > 6)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                            (counter > 7)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                          ]),
                      Container(
                        height: 10,
                      ),
                      Container(
                        height: 3,
                        color: Colors.white,
                      ),
                      Container(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            (counter > 8)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                            (counter > 9)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                            (counter > 10)
                                ? Image.asset(_lighted)
                                : Image.asset(_unlighted),
                          ]),
                      Container(
                        height: 10,
                      ),
                      Container(
                        height: 3,
                        color: Colors.white,
                      ),
                      Container(
                        height: 25,
                      ),
                    ],
                  )),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                child: Opacity(
                  opacity: 0.7,
                  child: Container(
                    alignment: Alignment.topCenter,
                    // Choose Colors.black.withOpacity(0.3) here if you want a shadow effect in addition to blurring.
                    color: Colors.blueGrey,
                    // This part is new, creating the cutout.
                    child: CustomPaint(
                      size: Size(0, 100),
                      painter: Hole(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
              color: const Color(0xffFDDB60),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/canlder_crown.png")),
                      Image.asset("assets/small_candle.png"),
                      Image.asset("assets/small_candle.png"),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                ],
              )),
          Container(
              color: const Color(0xffFDDB60),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/canlder_crown.png")),
                      Image.asset("assets/small_candle.png"),
                      Image.asset("assets/small_candle.png"),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                ],
              )),
          Container(
              color: const Color(0xffFDDB60),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/canlder_crown.png")),
                      Image.asset("assets/small_candle.png"),
                      Image.asset("assets/small_candle.png"),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                ],
              )),
          Container(
              color: const Color(0xffFDDB60),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/canlder_crown.png")),
                      Image.asset("assets/small_candle.png"),
                      Image.asset("assets/small_candle.png"),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                ],
              )),
          Container(
              color: const Color(0xffFDDB60),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/canlder_crown.png")),
                      Image.asset("assets/small_candle.png"),
                      Image.asset("assets/small_candle.png"),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                        Image.asset("assets/small_candle.png"),
                      ]),
                ],
              )),
        ],
      ),
    );
  }
}

class Hole extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = 100;
    double blurRadius = 10;
    canvas.drawCircle(
        Offset(-137, 60),
        50,
        Paint()
          ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );
    if (counter > 0) {
    canvas.drawCircle(
      Offset(0, 50),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 1) {
      canvas.drawCircle(
        Offset(132, 50),
        50,
        Paint()
          ..blendMode = BlendMode.xor
          // The mask filter gives some fuziness to the cutout.
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
      );
    }
    if (counter > 2) {
    canvas.drawCircle(
      Offset(-127, 190),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 3) {
    canvas.drawCircle(
      Offset(0, 190),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 4) {
    canvas.drawCircle(
      Offset(132, 190),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 5) {
    canvas.drawCircle(
      Offset(-127, 330),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 6) {
    canvas.drawCircle(
      Offset(0, 330),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 7) {
    canvas.drawCircle(
      Offset(132, 330),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 8) {
    canvas.drawCircle(
      Offset(-127, 470),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 9) {
    canvas.drawCircle(
      Offset(0, 470),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
    if (counter > 10) {
    canvas.drawCircle(
      Offset(132, 470),
      50,
      Paint()
        ..blendMode = BlendMode.xor
        // The mask filter gives some fuziness to the cutout.
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius),
    );}
  }

  @override
  bool shouldRepaint(Hole oldDelegate) => false;
}
