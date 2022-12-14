// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
            image: AssetImage("assets/homeBG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text("PAECH \u{1F44B}",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ))))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Column(children: [
                            Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text("\u{1F4CD} Bluebell Ward",
                                    style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                    )))),
                            Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text("Wrong ward? Tap here to change",
                                    style: GoogleFonts.raleway()))
                          ])),
                    ]),
                Container(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  height: 500.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 50, right: 30),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          elevation: 0,
                          color: Color(0xff493FBB),
                          child: SizedBox(
                            width: 500,
                            height: 500,
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 30, top: 30, bottom: 5),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('THE FOOD TUBE',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 30))))),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Image.asset("assets/foodTubeCover.png",
                                      height: 175, width: 400)),
                              Container(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.play_arrow_sharp,
                                    size: 35, color: Colors.white),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black38),
                              ),
                              Spacer(),
                              Padding(
                                  padding:
                                      EdgeInsets.only(right: 30, bottom: 30),
                                  child: Align(
                                      alignment: FractionalOffset.bottomRight,
                                      child: Text("UPPER GI ENDOSCOPY",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12)))))
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          elevation: 0,
                          color: Color(0xff5182BC),
                          child: SizedBox(
                            width: 500,
                            height: 500,
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 30, top: 30, bottom: 5),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('A NAP',
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 30))))),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Image.asset("assets/napCover.png",
                                      height: 175, width: 400)),
                              Container(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.play_arrow_sharp,
                                    size: 35, color: Colors.white),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black38),
                              ),
                              Spacer(),
                              Padding(
                                  padding:
                                      EdgeInsets.only(right: 30, bottom: 30),
                                  child: Align(
                                      alignment: FractionalOffset.bottomRight,
                                      child: Text("GA",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12)))))
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 70, right: 70),
                    child: Row(children: [
                      SizedBox(
                        height: 80,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('HELP',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400))),
                            style: ButtonStyle(
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    TextStyle(fontSize: 25)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff69F07F)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))))),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 80,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('SEARCH',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400))),
                            style: ButtonStyle(
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    TextStyle(fontSize: 25)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff18AFAF)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))))),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 80,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('MEE',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400))),
                            style: ButtonStyle(
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    TextStyle(fontSize: 25)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffE4AC58)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))))),
                      )
                    ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
