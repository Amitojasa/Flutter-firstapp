import 'package:firstapp/drawer.dart';
import 'package:firstapp/name_card_widget.dart';
import 'package:flutter/material.dart';

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
            child:
                NameCardWidget(myText: myText, nameController: _nameController),
          ),
        ),
      ),

      drawer: MyDrawer(),
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
