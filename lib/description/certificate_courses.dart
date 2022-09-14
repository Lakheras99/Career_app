import 'package:flutter/material.dart';

class CertificateCourses extends StatelessWidget {
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
                'Certificate Courses',
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
                          '        Certificate programs help you get entry level jobs, a good Bachelor’s Degree program can boost your career prospects!\n\nThis completely depends  upon field you choose',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\nCertificate Courses\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1.)  Certificate in Information Technology:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "CIT is an entry level certification course.It deals with the basics of Information Technology. The main aim of this program is to train students and familiarize them with the basics of IT!\nIT deals with the storage, transfer, retrieval, security and manipulation of data/information. For performing these tasks, we use IT systems.\nHere’s an overview of the course –\n\nName of the course: Certificate in Information Technology (CIT)\nType of course: Certification\nDuration: 6-12 months\nEligibility: 10th pass from a recognized board\n\nThe course deals with various aspects of IT such as –\n\nComputer Hardware\nBasics of programming\nBasics of Software\nBasics of Networking\nInternet Technology\nBasics of Database management\nMultimedia\nBasics of Information System\n\nHere are some of the important subjects present in CIT curriculum –\nBasics of Computer Systems\nIntroduction to IT\nInternet Technology and Applications\nPractical work\n\nCIT course can help you bad an entry level job at IT firms, hardware and networking firms etc. It is not an advanced course. So, one can’t expect high profile jobs in return!\n",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '2.)  Certificate in Hardware & Networking:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Hardware and Networking forms an integral part of IT (Information Technology). IT primarily deals with creation, storage, retrieval, security and manipulation of data/information.\nIT systems are used to perform the above mentioned tasks. A simple IT system is made up of relevant software, hardware, network and database. It is evident how hardware and networking forms an integral part of IT systems.\nIn India, hardware and networking programs are available at the following levels (based on Degree awarded) –\n\nUG courses (Undergraduate)\nPG courses (Postgraduate)\nDoctoral Degree programs\nHere, we will focus on Certificate in Hardware and Networking, which is a UG level program. Technically, it is a vocational training program!\nThe main aim of this program is to generate a skilled work force of hardware and networking technicians\nNetworking isn’t as simple as connecting two computers! It involves the following technical aspects –\n\nNetworking protocols\nNetworking hardware\nIP addressing\nNetwork security\nNetwork maintenance\nIt is an entry level course that focuses on the basics!\n\nDURATION\nTraining period may vary from one institute to another. It could be anywhere between 3-6 months.\n\nELIGIBILITY CRITERIA\nIt may vary from one institute to another. Some institutes accept 10th pass students. Some other institutes accept only 12th pass students. Those who hold a higher qualification (than the ones mentioned here) may also pursue this program!\n\nCAREER PROSPECTS\nAfter completing this course, one may find entry level jobs at IT firms, communication firms, firms relying on IT systems etc.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3.)  Certificate in Android App Development:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Many of us use Android smartphones. We rely on a number of applications each day. For example, we rely on WhatsApp for messaging, we rely on photo editing apps for enhancing our pictures and photos, we use music players to listen to music etc.\nIt is a job oriented certification programn\nAs the name suggests, this course deals with the subject – Android App development.\nIn short, we use apps for a variety of purposes. Without them, our lives would be much less productive and entertaining!n\How are these apps created? Yes, they are created by app developers who are skillful in areas such as – programming, design and UI development.\nApp development consists of aspects such as –\n\nProgramming\nDesign & Layout\nUI Design\nTesting\nGraphics Design\nCome, let us take a look at the course overview. Here it is –\n\nName of the course: Certificate in Android App Development\nType of course: Certification\nDuration: 6-12 months\nEligibility: 10th or 12th pass (may vary)\n\nThe course is an entry level program. It deals with the basics of app development.\n\nCOURSE DETAILS\nTYPE OF COURSE\nIt is a certification program.\n\nDURATION\nThe training program is 6-12 months long.\n\nELIGIBILITY\nPassed 10th or 10+2 from a recognized board (may vary from one institute to another).\n\nCOLLEGES\nThis program is offered by computer training centers, private institutes and online portals. From these institutes and portals, you may pursue this program in regular classroom or online learning modes!\n\nFEES\nFees charged may vary from one institute to another. It depends upon factors such as –Type of course\nRating of the institute\nLocation of the institute\nOn an average, it could be anywhere between 10-25K INR.\n\nSYLLABUS\nHere are some of the important subjects present in Certificate in Android App Development course –\nProgramming\nDesign & Layout\nUI Design\nTesting\nGraphics Design\n\nCAREER PROSPECTS\nAfter completing this course, you may find entry level jobs at Digital Marketing firms, Software Firms and Game Design Firms. You may even freelance or start your own app development service!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '4.)  Certificate in Electrician Course:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'As the name suggests, this program trains students so that they become capable of donning the role of an electrician!\nIn simple terms, an electrician is a tradesman who specializes in electrical wiring of buildings, machines and relevant equipment. A skilled electrician is capable of installing, maintaining and repairing electrical components and infrastructure.\nHere is an overview of the course –\n\nName of the course: Certificate in Electrician\nType of course: Certificate/Vocational training\nField: Electrician Training\nDuration: 1 year\nEligibility: 10th pass with Science subject\n\nThere are sub-branches and sub-disciplines within this trade. Notable ones are –\nLineman\nMaster Electrician\nApprenticen\nAnd more…\n\nCertificate in Electrician course trains students in the following areas –\nElectrical Wiring\nEngineering Graphicsn\nBasics of Electrical Engineering\nElectrical Machines (Installation, Maintenance and Repair)\nHome Appliances (Installation, Maintenance and Repair)\n\nThus, the main aim of this training program is to instill relevant skills in students. These skills will help them get employed! In short, this course develops a skilled work force of electricians in our country!\n\nINSTITUTES\nThis vocational training program is being offered under many Government skill development programs, schemes and missions.\n\nFEES\nOn an average, the fees could be anywhere between 2-10K INR.\n\nSYLLABUS\nHere are some of the important subjects present in Certificate in Electrician course curriculum –\n\nEngineering Graphics\nBasics of Electrical Engineering\nMeasurements\nWiring\nJointing\nCost Estimation\nElectrical Machines\nHome Appliances\nLab Work\nWorkshop\n\nThe training program consists of theoretical lessons as well as workshops and practical work sessions.\n\nCAREER PROSPECTS\nAfter completing this course, a candidate will have access to multiple job profiles and opportunities. They’ll have access to Government jobs, Private sector jobs as well as self-employment.\n\nGovernment Electricity boards are the prime Government sector recruiters. Apart from that, Electricians may also find work at places like –\nAppliance Manufacturing firms\nElectrical Repair Shopsn\nManufacturing firms\nAnd more…\n\nYou may even start your own small or medium scale venture. Skilled electricians are in huge demand these days. You may offer your services and earn a decent amount of money doing activities such as –\nWiring\nInstallation work\nMaintenance work\nRepair work\nAnd more…\n\nWith time, after gaining experience and capital, you may even start electrical contract work. Gradually, you may scale up the size of your venture!\n',
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
