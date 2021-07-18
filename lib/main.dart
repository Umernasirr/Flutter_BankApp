import 'package:banking_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Color(0xff0D0F35),
        accentColor: Color(0xffB4C5E5),
        backgroundColor: Color(0xffE9F0FB),
      ),
      home: LoginPage(),
    );
  }
}
