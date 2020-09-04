import 'package:flutter/material.dart'; // It has lot of built in widgets , it has bas

//This is the funciton that gets executed when the app starts
void main() {
  runApp(MyApp()); 
  // once this is called build method of MyApp will be called and the widget returned from MyApp will be rendered on the screen
}

// everything in flutter in a widget , we need to create our widget
// to create a widget , create a class that extends StatelessWidget

class MyApp extends StatelessWidget {

  // this will be called by flutter to draw or render the widget on the screen
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("Hello from My App Widget"));
    // home is the core widget will be mounted on the screen
  }

}