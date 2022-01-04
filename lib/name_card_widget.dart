import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset('assets/d.jpg'),
        const SizedBox(height: 20),
        Text(myText,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
    ));
  }
}
