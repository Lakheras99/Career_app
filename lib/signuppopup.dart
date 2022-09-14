import 'dart:io';

import 'package:careerapp/model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email,
      _password,
      _cpassword,
      _name,
      _age,
      _mob,
      _english,
      _maths,
      _science,
      _hindi,
      _marathi,
      _ss;

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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
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
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return "*Required";
                      }
                      return null;
                    },
                    onSaved: (input) => _name = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return "*Required";
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 120) {
                        return "*Age is too high";
                      } else if (double.tryParse(input) < 12) {
                        return "*Age is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _age = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Age",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return "*Required";
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (input.length < 10) {
                        return "*Number cannot be lesser than 10 digits";
                      } else if (input.length > 10) {
                        return "*Number cannot be greater than 10 digits";
                      }
                      return null;
                    },
                    onSaved: (input) => _mob = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Mobile Number",
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input.length < 6) {
                        return "*Your password must be atleast 6 charcters long";
                      }
                      return null;
                    },
                    obscureText: true,
                    onSaved: (input) => _password = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input.length < 6) {
                        return "Your password must be atleast 6 charcters long";
                      }
                      return null;
                    },
                    obscureText: true,
                    onSaved: (input) => _cpassword = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    '----------Academic details (optional)----------',
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return null;
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 100) {
                        return "*Number is too high";
                      } else if (double.tryParse(input) < 0) {
                        return "*Number is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _english = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter English Marks",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return null;
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 100) {
                        return "*Number is too high";
                      } else if (double.tryParse(input) < 0) {
                        return "*Number is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _maths = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Maths Marks",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return null;
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 100) {
                        return "*Number is too high";
                      } else if (double.tryParse(input) < 0) {
                        return "*Number is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _science = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Science Marks",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return null;
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 100) {
                        return "*Number is too high";
                      } else if (double.tryParse(input) < 0) {
                        return "*Number is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _hindi = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Hindi Marks",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return null;
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 100) {
                        return "*Number is too high";
                      } else if (double.tryParse(input) < 0) {
                        return "*Number is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _marathi = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Sanskrit/Marathi Marks",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13,
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input == "") {
                        return null;
                      } else if (double.tryParse(input) == null) {
                        return "*Only Numbers are allowed";
                      } else if (double.tryParse(input) > 100) {
                        return "*Number is too high";
                      } else if (double.tryParse(input) < 0) {
                        return "*Number is too low";
                      }
                      return null;
                    },
                    onSaved: (input) => _ss = input,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey[200],
                      hintText: "Enter Social Studies Marks",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.28,
                  ),
                  height: 40,
                  child: RaisedButton(
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    textColor: Colors.white,
                    color: Color(0xffffa92f),
                    onPressed: signUp,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    Text(
                      'Already have an Account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      child: Text(
                        "Click here to Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 16),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signUp() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      if (_password == _cpassword) {
        try {
          final result = await InternetAddress.lookup('google.com');
          if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
            FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: _email, password: _password)
                .catchError((onError) {
              Fluttertoast.showToast(
                  msg: onError.message, toastLength: Toast.LENGTH_LONG);
            }).then((onValue) async {
              if (onValue != null) {
                if (_english == "") {
                  _english = "NA";
                }
                if (_maths == "") {
                  _maths = "NA";
                }
                if (_science == "") {
                  _science = "NA";
                }
                if (_hindi == "") {
                  _hindi = "NA";
                }
                if (_marathi == "") {
                  _marathi = "NA";
                }
                if (_ss == "") {
                  _ss = "NA";
                }
                Users user = Users(_name, _email, _age, _mob, _english, _maths,
                    _science, _hindi, _marathi, _ss);
                var dbRef =
                    FirebaseDatabase.instance.reference().child('Users');
                var key = dbRef.push().key.toString();
                var s = await SharedPreferences.getInstance();
                await s.setString('key', key);
                dbRef.child(key).set(user.toJson());
                Navigator.pop(context);
              }
            });
          }
        } on SocketException catch (_) {
          Fluttertoast.showToast(
              msg: 'No Internet Connection', toastLength: Toast.LENGTH_SHORT);
        }
      } else {
        Fluttertoast.showToast(
            msg: 'Passwords do not match', toastLength: Toast.LENGTH_SHORT);
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
}
