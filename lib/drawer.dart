import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    ]));
  }
}
