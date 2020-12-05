import 'dart:ui';

import 'package:flutter_app/otp.dart';
import 'package:flutter/material.dart';
import './networkHandler.dart';

void main() => runApp(
    MaterialApp(home: Signup(), routes: {'/otpVerify': (context) => Otp()}));

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  NetworkHandler networkHandler = NetworkHandler();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: PreferredSize(
            child: Container(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(9.0, 65.0, 9.0, 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: Colors.purple[800],
                  ),
                  Text('Login',
                      style:
                          TextStyle(fontSize: 20.0, color: Colors.purple[800]))
                ],
              ),
            )),
            preferredSize: Size.fromHeight(120)),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60.0),
            Container(
              width: 240,
              child: Text(
                'Create Your Account',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 49,
                    child: TextFormField(
                      controller: usernamecontroller,
                      decoration: InputDecoration(
                          hintText: 'Your Name',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 49,
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          hintText: 'E-mail',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 49,
                    child: TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Map<String, String> data = {
                        "username": usernamecontroller.text,
                        "email": emailcontroller.text,
                        "password": passwordcontroller.text,
                      };
                      print(data);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 47,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/otpVerify');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.purple[800],
                        child: Text('JOIN US',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                            )),
                      ),
                    ),
                  )
                ],
              )),
            ),
            Container(
              width: 240,
              child: Text(
                'By pressing JOIN US you agree to our terms & conditions',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
          ],
        )));
  }
}
