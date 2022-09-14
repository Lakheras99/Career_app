import 'package:careerapp/home/test.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Home',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.1),
                        blurRadius: 12.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Know your Strengths and Weakness',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Discover your personality type',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Take our career test',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Take advice from others',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Work as an Intern in what you love to do',
                          style: TextStyle(fontSize: 18.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0, left: 35.0),
                          child: Text(
                            'We help Students find the career by maximizing their',
                            style: TextStyle(
                                fontSize: 30, color: Colors.lightBlue),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          'potential',
                          style: TextStyle(
                              fontSize: 30, color: Colors.lightBlue),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 25),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 40,
                          child: Button(
                            onPressed: () async {
                              var s = await SharedPreferences.getInstance();
                              var l = s.getBool('loggedIn');
                              if (l == true) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Test(),
                                  ),
                                );
                              } else {
                                Fluttertoast.showToast(
                                    msg: 'You need to login');
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.white,
                            color: Color(0xffffa92f),
                            child: Text(
                              'Take Test',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
