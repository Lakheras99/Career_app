import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
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
                'About Us',
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
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 130)),
                        Image.asset(
                          'assets/images/error.png',
                          width: 100,
                          height: 100,
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          'Having Trouble?',
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        Text(
                          'Contact Us!',
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 80)),
                            Image.asset(
                              'assets/images/call.png',
                              width: 20,
                              height: 20,
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text(
                              '+91 9284008184',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Image.asset(
                              'assets/images/gmail.png',
                              width: 20,
                              height: 20,
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text(
                              'Lakheras99@gmail.com',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            )
                          ],
                        )
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
