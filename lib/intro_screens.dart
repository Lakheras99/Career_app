import 'dart:async';

import 'package:careerapp/loginpopup.dart';
import 'package:careerapp/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WhiteScreen extends StatefulWidget {
  @override
  _WhiteScreenState createState() => _WhiteScreenState();
}

class _WhiteScreenState extends State<WhiteScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('visited') ?? false);
    bool _loggedin = (prefs.getBool('loggedIn') ?? false);
    if (_seen && _loggedin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage2()));
    } else if (_seen) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroScreen()));
    }
  }

  @override
  void initState() {
    checkFirstSeen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircularProgressIndicator(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, initialIndex: 0, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Align(
          child: Container(
            width: MediaQuery.of(context).size.width - 70,
            child: Column(
              children: <Widget>[
                SizedBox(height: 140.0),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      FirstScreen(),
                      SecondScreen(),
                      ThirdScreen(),
                      FourthScreen(),
                    ],
                  ),
                ),
                //Spacer(),
                TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Color(0xff949494),
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: <Widget>[
                    Container(
                      width: 1.0,
                      child: Icon(Icons.fiber_manual_record, size: 15.0),
                    ),
                    Container(
                      width: 1.0,
                      child: Icon(Icons.fiber_manual_record, size: 15.0),
                    ),
                    Container(
                      width: 1.0,
                      child: Icon(Icons.fiber_manual_record, size: 15.0),
                    ),
                    Container(
                      width: 1.0,
                      child: Icon(Icons.fiber_manual_record, size: 15.0),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CircleAvatar(
          radius: 85.0,
          backgroundColor: Colors.white,
          child: Image.asset(
              'assets/images/boy-student-with-his-bag-pack-and-book-back-to-school-clipart.jpg'),
        ),
        SizedBox(height: 40.0),
        Text(
          'Our Goal is',
          style: TextStyle(fontSize: 26.0),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15.0),
        Text(
          'to not only help you make the decisions you need to make now, but to give you the knowledge and skills you need to make future career and life decisions',
          style: TextStyle(fontFamily: 'fonts/Rubik-Regular', fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CircleAvatar(
          radius: 85.0,
          backgroundColor: Colors.white,
          child: Image.asset(
              'assets/images/boy-climbing-books-while-holding-books-in-handls-clipart.jpg'),
        ),
        SizedBox(height: 40.0),
        Text(
          'We will help you',
          style: TextStyle(fontSize: 26.0),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15.0),
        Text(
          'identify the factors influencing your\ncareer development and help\nyou assess your interests, abilities\nand values.',
          style: TextStyle(fontFamily: 'fonts/Rubik-Regular', fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CircleAvatar(
            radius: 85.0,
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/student.png')),
        SizedBox(height: 40.0),
        Text(
          'We will guide you',
          style: TextStyle(fontSize: 26.0),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15.0),
        Text(
          'to determine next steps and\n develop a plan to achieve goals',
          style: TextStyle(fontFamily: 'fonts/Rubik-Regular', fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _setPreferences();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      },
      child: ListView(
        children: <Widget>[
          CircleAvatar(
              radius: 85.0,
              backgroundColor: Colors.white,
              child: Image.asset(
                  'assets/images/college-wearing-cap-and-gown-holding-diploma-clipart-illustration.jpg')),
          SizedBox(height: 40.0),
          Text(
            'We will help you',
            style: TextStyle(fontSize: 26.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0),
          Text(
            'to know and understand yourself and\nthe world of work in order to make career,\neducational and life decisions',
            style: TextStyle(fontFamily: 'fonts/Rubik-Regular', fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Future<void> _setPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('visited', true);
  }
}
