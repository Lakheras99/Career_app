import 'package:careerapp/intro_screens.dart';
import 'package:careerapp/profile/profile.dart';
import 'package:careerapp/profile/profile_placeholder.dart';
import 'package:flutter/material.dart';

import 'package:careerapp/about/about.dart';
import 'package:careerapp/chatbot/chatbot.dart';
import 'package:careerapp/description/description.dart';
import 'package:careerapp/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Career Counselling',
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: Colors.orange),
      home: WhiteScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _cIndex = 0;
  final List<Widget> _children = [
    ProfilePlaceholder(),
    Description(),
    Home(),
    ChatBot(),
    AboutUs()
  ];

  void onTabTapped(int index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: _cIndex,
          children: _children,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _cIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.description,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'Description',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Color(0xffffa92f),
                  size: 25.0,
                ),
                title: Text(
                  'ChatBot',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'AboutUs',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int _cIndex = 0;
  final List<Widget> _children = [
    Profile(),
    Description(),
    Home(),
    ChatBot(),
    AboutUs()
  ];

  void onTabTapped(int index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: _cIndex,
          children: _children,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _cIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.description,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'Description',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Color(0xffffa92f),
                  size: 25.0,
                ),
                title: Text(
                  'ChatBot',
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 25.0,
                  color: Color(0xffffa92f),
                ),
                title: Text(
                  'AboutUs',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
