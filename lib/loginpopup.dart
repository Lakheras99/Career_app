import 'dart:io';

import 'package:careerapp/main.dart';
import 'package:flutter/material.dart';
import 'package:careerapp/signuppopup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          autovalidate: autoValidate,
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 35.0,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/owl-holding-diploma-celebrating-graduation-clipart.jpg',
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              SizedBox(height: 10),
              Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.13,
                ),
                child: TextFormField(
                  validator: emailValidator,
                  onSaved: (input) => _email = input,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(),
                    hintText: "Email Id",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13),
                child: TextFormField(
                  validator: (input) {
                    if (input.length < 6) {
                      return "Your password must be atleast 6 charcters long";
                    }
                    return null;
                  },
                  onSaved: (input) => _password = input,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                child: Text(
                  "Forgot Your Password?",
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                onTap: forgotPassword,
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.28,
                ),
                height: 40,
                child: RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  textColor: Colors.white,
                  color: Color(0xffffa92f),
                  onPressed: signIn,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text(
                    'Not having an account?',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    child: Text(
                      "Dont't worry click here to Register",
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          FirebaseAuth.instance
              .signInWithEmailAndPassword(email: _email, password: _password)
              .catchError((onError) {
            Fluttertoast.showToast(
                msg: onError.message, toastLength: Toast.LENGTH_LONG);
          }).then((onValue) {
            if (onValue != null) {
              _setLoginPreferences();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyHomePage2()));
            }
          });
        }
      } on SocketException catch (_) {
        Fluttertoast.showToast(
            msg: 'No Internet Connection', toastLength: Toast.LENGTH_SHORT);
      }
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  Future<void> forgotPassword() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          FirebaseAuth.instance
              .sendPasswordResetEmail(email: _email)
              .catchError((onError) {
            Fluttertoast.showToast(
                msg: onError.message, toastLength: Toast.LENGTH_LONG);
          }).then((onValue) {
            Fluttertoast.showToast(
                msg: 'Reset link is Successfully sent to this Email Id');
          });
        }
      } on SocketException catch (_) {
        Fluttertoast.showToast(
            msg: 'No Internet Connection', toastLength: Toast.LENGTH_SHORT);
      }
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) return '*Required';
    if (!regex.hasMatch(value))
      return '*Enter a valid email';
    else
      return null;
  }

  Future<void> _setLoginPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('loggedIn', true);
  }
}
