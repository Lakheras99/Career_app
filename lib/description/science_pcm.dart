import 'package:flutter/material.dart';

class SciencePCM extends StatelessWidget {
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
                'Science (PCM)',
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
                          '\nCourses after 12th:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1.)  ENGINEERING (DEGREE – 4 YEARS & DIPLOMA – 3 YEARS)\n',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '        In India, Engineering is one of the most popular professional courses among students. There are two main types of engineering courses available in India. They are:\n1. B.E. or B.Tech. (Bachelor of Engineering or Bachelor of Technology)\n2. Diploma in Engineering\n',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'B.E. or B.Tech. programs are 4 years long. There are various types of B.E. or B.Tech. programs available in India. Some of the popular branches are:\n',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Mechanical Engineering\nElectrical Engineering\nCivil Engineering\nChemical Engineering\nComputer Science Engineering\nIT Engineering\nIC Engineering\nEC Engineering\nElectronics Engineering\nElectronics and Telecommunication Engineering\nPetroleum Engineering\nAeronautical Engineering\nAerospace Engineering\nAutomobile Engineering\nMining Engineering\nBiotechnology Engineering\nGenetic Engineering\nPlastics Engineering\nFood Processing and Technology\nAgricultural Engineering\nDairy Technology and Engineering\nAgricultural Information Technology\nPower Engineering\nProduction Engineering\nInfrastructure Engineering\nMotorsport Engineering\nMetallurgy Engineering\nTextile Engineering\nEnvironmental Engineering\nMarine Engineering\nNaval Architecture\n',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '2.)   B.SC. COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'B.Sc. stands for Bachelor of Science. B.Sc. course lasts for a period of 3 years. Like engineering, B.Sc. program is also available in various disciplines. Some of the notable B.Sc. courses ideal for PCM group students are:\n\nB.Sc. Agriculture\nB.Sc. Horticulture\nB.Sc. Forestry\nB.Sc. IT\nB.Sc. Computer Science\nB.Sc. Chemistry\nB.Sc. Mathematics\nB.Sc. Physics\nB.Sc. Hotel Management\nB.Sc. Nautical Science\nB.Sc. Electronics\nB.Sc. Electronics and Communication\nB.Sc. Biotechnology\nB.Sc. Geology\nB.Sc. Sports & Health Education\nB.Sc. Animation and Multimedia\nB.Sc. Hospitality\nB.Sc. Mass Communication\n\nAfter completing B.Sc. course, students may take up a job or go for higher studies. M.Sc. is a good PG course available in front of B.Sc. graduates.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3.)  MANAGEMENT COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Have you always wanted to become a manager? Do you want to take up a senior administrative role in a company? If yes, management courses will be of help to you!\nMBA is the most valued and popular management course in India. Unfortunately, it is a PG level course.\nSo, what should be done if you want to pursue a good management program after 12th? There are some good undergraduate level management courses available in India. They are:\n\nBBA (Bachelor of Business Administration)\nBMS (Bachelor of Management Studies)\nIntegrated BBA + MBA program (5 years duration)\nBHM (Bachelor of Hotel Management)\n\nAcademic programs such as BBA, BMS and BHM are 3 years long. After completing any of these courses, you may follow it up with an MBA!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '4.)  B.ARCH. (BACHELOR OF ARCHITECTURE)',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'B.Arch. is a professional course that deals with architecture and its allied areas. The academic program is 5 years long. The program lays adequate importance on classroom lectures and practical sessions.\n\nFor securing admission into reputed institutes, one must crack architecture entrance exams such as NATA, JEE etc. Some institutes are also known to conduct their own private entrance test and selection interview.\nIf you want to become an architect, this course is ideal for you. Only Science stream PCM group students are eligible to pursue this course!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '5.)  INTEGRATED LAW COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'LL.B. is the most popular law course in India. Unfortunately, it is a postgraduate level course. It means that you must have completed a Bachelor’s Degree course in order to be considered eligible to pursue LL.B. course!\nSo, what should be done to pursue law right after 12th? Integrated law courses will be helpful in such conditions!\nIntegrated law courses combine an undergraduate level Degree program and LL.B. It means that students may pursue this course right after passing 12th standard!\nSome of the notable integrated law programs are –\nB.Com. + LL.B.\nBBA + LL.B.\nBA + LL.B.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '6.)  B.DES. (BACHELOR OF DESIGN) COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'B.Des. stands for Bachelor of Interior Design. It is a job oriented Design related course. It is one of the best Design professional course in India.\n\nB.Des. courses are available in various formats. The academic program is 4 years long. In order to secure admission into reputed institutes, one must crack relevant Design entrance tests. Some private institutes are also to conduct their own entrance test and selection interview.\n\nBachelor of Interior Designing\nBachelor of Design (Accessory)\nBachelor of Design (Leather)\nBachelor of Textile Design\nBachelor of Product Design\nFurniture and Interior Design course\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '7.)  TEACHER TRANING COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Are you passionate about teaching? Do you want to become a teacher? If yes, teaching courses will be of help to you! Some teaching courses are PG level programs. On other hand, some teacher training courses are undergraduate level programs.\nHere are some notable teacher training courses which you may pursue after completing 12th –\nB.El.Ed.\nIntegrated B.Ed. program\nDiploma in Elementary Education\nB.P.Ed. (Bachelor of Physical Education)\nBPE\nD.El.Ed.\nD.Ed.\nNTTE\nECCE\nJBT\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '8.)  BACHELOR OF PHARMACY',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Do you want to become a pharmacist? If yes, B.Pharm. course will be of help to you! The academic program is 4 years long. Though this course is meant for PCB group students, PCM group students are also eligible to pursue this academic program.\n\nAfter completing B.Pharm., one may take up a job or go for higher studies. M.Pharm. is an ideal PG course for B.Pharm. graduates.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '9.)  COMMERCIAL PILOT TRAINING',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Becoming a Commercial Pilot is a dream that many of us have nourished! If you want to become a Commercial Pilot, you must hold a CPL (Commercial Pilot License). But becoming a Commercial pilot is not an easy task.\n\nIn order to be considered eligible for commercial pilot training, a candidate must satisfy some physical and medical standards. Apart from that, the minimum educational qualification required  for commercial pilot training is – 10+2 passed with Physics and Mathematics subjects.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '10.)  MERCHANT NAVY COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Do you love the life at sea? Do you want a career that provides you with thrill and adventures? If yes, maritime courses will be of help to you! A job in merchant navy sector is unlike a typical 9-5 job!\n\nBeing a sailor or marine engineer, you will spend a good pat of the year aboard a merchant navy ship! The work and working conditions are challenging. Some of the notable merchant navy courses available after 12th are –\n\nB.E. or B.Tech. in Marine Engineering\nDME course\nB.Sc. Nautical Science\nDiploma in Nautical Science\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '11.)  SOME PARAMEDICAL COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'For any healthcare institute to function efficiently, it needs skilled paramedics. How to become a paramedic, you may ask. In India, there are numerous paramedical courses to choose from!\n\nThough paramedical courses are usually meant for PCB group students, PCM group students are also eligible to access some such courses. Eligibility criteria may vary from one institute to another!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '12.)  BACHELOR OF STATISTICS',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'If you like playing with numbers, probability and equations, this course will be of help to you. A good alternative to this academic program is – B.Sc. in Statistics. In some cases, Statistics is bundled with relevant fields such as Computer Science and Mathematics, forming a combination course!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '13.)  BACHELOR OF PLANNING',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'If you are interested in shaping and building towns and cities in India, this course will be of help to you! In a populous country like India, town and urban planning is of utmost importance.\nPopulation is increasing rapidly and our towns and cities are not capable of accommodating this increase in population! People migrate to towns and cities from villages in search of better jobs, education, opportunities and living conditions.\nBut are our towns and cities designed to accommodate this influx of population? Bachelor of Planning course churns out skilled planner who are knowledgeable in areas such as  and urban planning. This academic program is 4 years long.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '14.)  BACHELOR OF FASHION TECHNOLOGY',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Are you passionate about fashion designing? If yes, this course will be of help to you. Bachelor of Fashion Technology is a 4 years long undergraduate level Bachelor’s Degree program. The course trains students in areas such as fashion designing, fashion merchandising, fashion communication, textile engineering and marketing.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '15.)  OTHER COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Apart from the above mentioned professional courses, PCM group students are also eligible to pursue professional courses belonging to other streams (arts, humanities and commerce). For example, PCM group students are eligible to pursue courses such as B.Com., BA and BFA!\n\n\nHere are some such notable courses from other streams –\n\nB.Com. (relevant fields like statistics)\nB Social Work\nMass Communication and Journalism\nAnimation and Multimedia\nPerforming Arts\nLanguage Courses (Foreign Languages are promising)\nDiploma in Retail Management\nDiploma in Education Technology\nDiploma in Hotel Management\nDiploma in Fire Safety and Technology\nDiploma in Film Making and Video Editing\nAir Hostess/Cabin Crew training course\nDiploma in Event Management\nBachelor of Statistics\nBA (relevant fields)\nCMA (Certified Management Accountant)\nCA (Chartered Accountancy)\nActuarial Science\nCS (Company Secretary Course)\n',
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
