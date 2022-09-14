import 'package:flutter/material.dart';

class HotelManagement extends StatelessWidget {
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
                'Hotel Management',
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
                          '        Hotel management is emerging as a popular choice among Indian students. This sector is generating decent job opportunities.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'In India, travel and tourism sector is growing at a rapid pace. Travel and tourism is closely associated with other sectors such as hospitality and hotel management.\n\nThanks to the surge of travel and tourism sector, hotel and hospitality management sector is also enjoying good growth! This has resulted in the increase in demand for skilled chefs, hotel managers and hospitality professionals.\n\nIf you want to build a career in any of the above mentioned areas, a good hotel management course will be of help to you! HM (Hotel Management) courses are well known for churning our skilled chefs, hotel managers and hospitality managers!',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\nCourses after 12th:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "HOTEL MANAGEMENT COURSES AFTER 10TH:\nDiploma courses\nCertificate/Vocational courses\n\n1 DIPLOMA COURSES\nDiploma in Hotel Management\nDiploma in Food & Beverages Production\nDiploma in Hotel and Hospitality Management\nDiploma in Hotel Management and Catering Technology\nDiploma in Food and Catering Technology\nDiploma in Front Office Operations\n\n2 CERTIFICATE/VOCATIONAL COURSES\nCertificate in Food and Beverages Production\nCertificate in Hotel and Catering Management\nCertificate in Front Office Operations\nCertificate in Housekeeping\n\nThe above mentioned courses will help you get entry level jobs in hotel management sector.\nAfter completing 12th, you may pursue good Bachelor’s Degree courses related to hotel management such as:\n\nBHM (Bachelor of Hotel Management)\nBachelor of Catering Technology\nBachelor of Hotel and Catering Management\nBachelor of Travel and Hospitality Management\nB.Sc. in Hotel Management\nBA in Culinary Arts\nBBA in Hotel Management\nBBA in Hospitality Management\nBBA in Travel and Tourism Management\n",
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
