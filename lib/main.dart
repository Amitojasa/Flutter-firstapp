// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  //widgets app   ///material app ////cupertino app
  // runApp(WidgetsApp());
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
  // runApp(CupertinoApp());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
          height: 500,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.red,
                width: 100,
                height: 100,
                alignment: Alignment.center,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.yellow,
                width: 100,
                height: 100,
                alignment: Alignment.center,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green,
                width: 100,
                height: 100,
                alignment: Alignment.center,
              ),
            ],
          )),
    );
  }
}
