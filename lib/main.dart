// import 'package:flutter/widgets.dart';

import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firstapp/utils/constants.dart';
// import 'package:flutter/cupertino.dart';

Future main() async {
  //widgets app   ///material app ////cupertino app
  // runApp(WidgetsApp());
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Constants.prefs?.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
