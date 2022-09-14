import 'package:flutter/material.dart';

class EventManagement extends StatelessWidget {
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
                'Event Management',
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
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'Introduction:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '        Event management is emerging as a popular choice among Indian students. This sector is generating decent job opportunities.\nEvent management primarily deals with the planning, creation and execution of events (large, medium and small scale) such as marriages, parties, corporate events, sports events, exhibitions etc.\nEvent management professionals apply principles of management in order to plan, create and execute an event. It involves the following fields of management –\n\nHR Management\nFinance Management\nLogistics Management\nPR Management\nMedia Management\nMarketing Management\n\nAt present, it has become necessary to have a relevant academic qualification!\nDo you want to pursue a event management course right after 10th? If yes, I can introduce you to some relevant courses. But my honest suggestion would be to pursue a good event management course after completing 10+2!',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\nCourses\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1.)  Diploma courses',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\nDiploma in Event Management\nDiploma in Event and Exhibition Management\nDiploma in Outdoor Event Management\nDiploma in Event Design and Management\nDiploma in Event and Exhibition Design\n",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '2.)  CERTIFICATE/VOCATIONAL COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Certificate in Event Management\nCertificate in Event and Exhibition Management\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3.)  SUGGESTION',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'I’d suggest my readers to take up 11th and 12th schooling in any stream (Arts, Commerce or Science). After completing 12th, you may pursue good Bachelor’s Degree courses related to event management such as –\n\nBachelor of Event Management\nB.Sc. in Event Management\nBA in Event Management\nBBA in Event Management\nBBA in Event and Exhibition Management\nB.Sc. in Event and Exhibition Design\n\nWhile Diploma and Certificate programs help you get entry level jobs, a good Bachelor’s Degree program can boost your career prospects!\nAfter completing Bachelor’s Degree course, you may go for higher studies or take up a job!\nSome of the notable PG event management courses are –\nMBA in Event Management\nM.Sc. in Event Management\nPG Diploma in Event Management\nMA in Event Management\n',
                          style: TextStyle(
                            fontSize: 16.0,
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
