import 'package:careerapp/description/arts.dart';
import 'package:careerapp/description/certificate_courses.dart';
import 'package:careerapp/description/commerce.dart';
import 'package:careerapp/description/event_management.dart';
import 'package:careerapp/description/hotel_management.dart';
import 'package:careerapp/description/iti_courses.dart';
import 'package:careerapp/description/science.dart';
import 'package:careerapp/description/science_pcb.dart';
import 'package:careerapp/description/science_pcm.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final List l = [
    ['Commerce', Commerce()],
    ['Science', Science()],
    ['Arts', Arts()],
    ['ITI Courses', ITICourses()],
    ['Event Management', EventManagement()],
    ['Hotel Management', HotelManagement()],
    ['Certificate Courses', CertificateCourses()],
    ['Science (PCM)', SciencePCM()],
    ['Science (PCB)', SciencePCB()],
  ];
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
                'Courses',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
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
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ListView.builder(
                      itemCount: l.length,
                      itemBuilder: (context, i) => Container(
                        margin: EdgeInsets.only(
                            right: 15, top: 13, bottom: 13, left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange.withAlpha(255),
                              Colors.orange.withAlpha(125)
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => l[i][1]));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/user.png',
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  l[i][0],
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
