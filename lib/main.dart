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
      body: Center(
        child: Container(
          height: 500,
          color: Colors.teal,
        ),
      ),

      drawer: Drawer(
          child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
            accountName: Text("Amitoj Singh"),
            accountEmail: Text('amitoj@gmail.com'),
            currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"))),
        ListTile(
            leading: Icon(Icons.person),
            title: Text("Amitoj SIngh"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("amitoj@gmail.com"),
            trailing: Icon(Icons.edit),
            onTap: () {})
      ])),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.edit)),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
