import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 200,
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Input Your Email", labelText: "Email")),
                    SizedBox(height: 16.0),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Input Your Password",
                            labelText: "Password")),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
