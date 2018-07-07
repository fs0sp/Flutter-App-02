import 'package:flutter/material.dart';

void main() {

runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Home",
      home: new HomePage(),
      theme: new ThemeData(           /* to create a THEME for the application */
        primarySwatch: Colors.red,
        brightness: Brightness.light, // to make it either dark or light
        accentColor: Colors.red
      ),
    );}
}

class HomePage extends StatefulWidget { 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mytext = "Hello World, What's Going On?";


  /* TO CHANGE TEXT */

  void _changeText() {
    setState(() {

        mytext = "Welcome to the Application";
    });
  }


  /* BODY WIDGET is a widget  */

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0), /* This will give padding from all sides, with a value of 8.0 */
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center, /* to align it in the center vertically */
          children: <Widget>[
            new Text(mytext, style: new TextStyle(
              fontSize: 20.0,
            ) , ),


          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(   // to add a floating button
        child: new Icon(Icons.add),                      // to add a "add" icon in the button*/
        onPressed: _changeText,
      ),
    );
  }
}
