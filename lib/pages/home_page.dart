import 'package:firstapp/drawer.dart';
// import 'package:firstapp/name_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(data[index]['title']),
                    subtitle: Text("ID: ${data[index]['id']}"),
                    leading: Image.network(data[index]["url"]));
              },
              itemCount: data.length)
          : Center(child: CircularProgressIndicator()),

      drawer: MyDrawer(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.edit)),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
