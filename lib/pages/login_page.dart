import 'package:flutter/material.dart';

import 'home_page.dart';

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
              padding: EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.email),
                              hintText: "Input Your Email",
                              labelText: "Email")),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.password),
                              hintText: "Input Your Password",
                              labelText: "Password")),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                        onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              )
                            },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(24.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 64.0, vertical: 18.0),
                          primary: Theme.of(context).primaryColor,
                        )),
                    SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () => {},
                            child: Text(
                              "Create a New Account",
                              style: TextStyle(color: Colors.black87),
                            )),
                        GestureDetector(
                            onTap: () => {},
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(color: Colors.black87),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
