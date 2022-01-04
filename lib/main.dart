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

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  var myText = "Change My Name";
  TextEditingController _nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Card(
                child: Column(
              children: <Widget>[
                Image.asset('assets/d.jpg'),
                const SizedBox(height: 20),
                Text(myText,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Some Text",
                        labelText: "Name"),
                  ),
                )
              ],
            )),
          ),
        ),
      ),

      drawer: Drawer(
          child: ListView(children: <Widget>[
        // ignore: prefer_const_constructors
        UserAccountsDrawerHeader(
            accountName: const Text("Amitoj Singh"),
            accountEmail: const Text('amitoj@gmail.com'),
            currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"))),
        ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Amitoj SIngh"),
            subtitle: const Text("Developer"),
            trailing: const Icon(Icons.edit),
            onTap: () {}),
        ListTile(
            leading: const Icon(Icons.email),
            title: const Text("Email"),
            subtitle: const Text("amitoj@gmail.com"),
            trailing: const Icon(Icons.edit),
            onTap: () {})
      ])),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          child: const Icon(Icons.edit)),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
