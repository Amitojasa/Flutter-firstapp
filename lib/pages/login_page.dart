import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Image.asset(
          "assets/a.jpg",
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.5),
          colorBlendMode: BlendMode.darken,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Card(
              child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter email",
                            labelText: "Email",
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Constants.prefs?.setBool("loggedIn", true);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("Login"),
                        )
                      ],
                    ),
                  )),
            )),
          ),
        ),
      ]),
    );
  }
}
