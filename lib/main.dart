import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  var animatedButtonDuratuon = Duration(milliseconds: 500);
  var animateButton = false;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          AnimatedPositioned(
            duration: animatedButtonDuratuon,
            bottom: 16,
            height: 50,
            right: animateButton ? 120 : 16,
            child: FloatingActionButton(child: Icon(Icons.play_arrow), onPressed: () {})  
          ),
           AnimatedPositioned(
             height: 50,
             bottom:  animateButton ? 90 : 16,
             right:  animateButton ? 90 : 16,
            duration: animatedButtonDuratuon,
            child: FloatingActionButton(child: Icon(Icons.pause), onPressed: () {})  
          ),
           AnimatedPositioned(
            duration: animatedButtonDuratuon,
            height: 50,
            bottom: animateButton ? 120 : 16,
            right: 16,
            child: FloatingActionButton(child: Icon(Icons.stop), onPressed: () {})  
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          setState(() {
            animateButton = !animateButton;           
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
