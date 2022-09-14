import 'package:flutter/material.dart';

class Arts extends StatelessWidget {
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
                'Arts',
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
                        color: Colors.orange.withOpacity(0.2),
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
                          '        Arts stream offers numerous career options and opportunities to students. It is a very traditional stream. This is one of the main reasons why this stream still has got takers in India!  Arts stream is very diverse. This fact is evident from the studies involved in this stream. It covers wide variety of studies such as- visual arts (painting, sculpting, drawing etc), performing arts (music, dance, drama etc), literary arts (languages, literature, philosophy etc), history, law, humanities subjects, geography, political science etc.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'There’s a misconception regarding this stream among Indian students and parents. Many of them think that arts stream is only taken by students who are academically dull. Well, this fact is false! There exists many challenging subjects in this stream too, and it takes certain aptitude to perform well in its exams too! It is very much possible to build a rewarding career after pursuing science stream at PUC level! In fact, many subjects present in arts stream will help one prepare well for Civil Services examination.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\nArts Subjects:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Some of the important subjects present in 11th and 12th Arts stream schooling are: \nEnglish\nHistory\nGeography\nPolitical Science\nEconomics\nOther literature subjects- Hindi, regional languages etc\nPsychology\nMusic\nHome Science\nPhysical Education\nPublic Administration\nMathematics\nComputer Science\nFine Arts\nSociology',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\nWellknown Careers:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Lecturer\nTeacher\nLawyer\nGovernment employee\nManagement professional\nArtist\nPainter\nAccountant\nBanker',
                          style: TextStyle(
                            fontSize: 16.0,
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
                          '1.)  BA',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "BA is still the most popular course among arts stream students. In India, there exists numerous BA programs, which focus on a particular domain. Some such BA programs are:\nBA in History and Archaeology\nBA in Hindi\nBA in Humanities\nBA in Finance\nBA in Foreign Languages (example- French)\nBA in Regional Languages (example- Malayalam)\nBA in Journalism and Mass Communication\nBA in Visual Communication\nBA in Literature\nBA in Philosophy\nBA in Music\nBA in Theatre\nBA in Yoga and Naturopathy\nBA in Tourism and Hospitality Management\nBA in Library Science\nBA in Photography\nBA in Applied Science\nBA in Advertising\nBA in Fine Arts\nBA in Mathematics\nBA in Retail Management\nBA in Fashion Merchandising\nBA in Culinary Sciences\nBA in Anthropology\nBA in Home Science\nBA in Hotel Management\nBA in Computer Applications\nBA in Finance and Insurance\nBA in Interior Designing\nBA in Psychology\nBA in Economics\nBA in Animation and Multimedia\n",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '2.)  BFA',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'If you are interested in fine arts this course will be of help to you!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3.)  BACHELOR’S COURSE IN ECONOMICS',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'If you are interested in economics, this course will be of help to you. This Bachelor’s Degree program focuses on the domain of economics. After completing the course, you may go for higher studies or take up a job.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '4.)  TEACHER TRAINING COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Are you passionate about teaching? Do you want to become a teacher? If yes, teaching courses will be of help to you! Some teaching courses are PG level programs. On other hand, some teacher training courses are undergraduate level programs.Here are some notable teacher training courses which you may pursue after completing 12th: \nB.El.Ed.\nIntegrated B.Ed. program\nDiploma in Elementary Education\nB.P.Ed. (Bachelor of Physical Education)\nBPE\nD.El.Ed.\nD.Ed.\nNTTE\nECCE\nJBT\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '5.)  BACHELOR OF STATISTICS',
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
                          '6.)  CMA COURSE',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'CMA stands for Cost Management Accountant. This training program  is similar to CS and CA programs. 10+2 passed students are eligible to pursue CMA course’s foundation program.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '7.)  ACTUARIAL SCIENCE',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '10+2 passed students are eligible to become student members of IAI (Institute of Actuaries of India). To do so, they must crack the Actuarial Common Entrance exam though!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '8.)  OTHER COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'B Social Work\nB.Sc. (relevant courses like- Hospitality Management, Photography, Animation etc)\nDiploma in Retail Management\nDiploma in Education Technology\nDiploma in Hotel Management\nAir Hostess/Cabin Crew training course\nDiploma in Event Management\nDiploma in Filmmaking and Video Editing\nBachelor of Statistics\nCA (Chartered Accountancy)\nCS (Company Secretary Course)\nCMA (Certified Management Professional)\nActuarial Science\nArchitecture (Mathematics subject and valid NATA score mandatory)\nAnimation and Multimedia (Degree and Diploma courses)\nANM Nursing Course\nGNM Nursing Course\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Skills Required:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'A student planning to take up Humanities/Arts should have a creative bent of mind.\nThey should be receptive to new thoughts, ideas and perspectives\nThey should have a seeking spirit A source of good, healthy imagination is always a plus\nThey must be willing to develop their communication skills They should be dedicated to their subjects, and have a knack for theoretical learning.\nIf this describes you, then by all means, Humanities/Arts is just the right stream for you.\n',
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
