import 'package:flutter/material.dart';

class Commerce extends StatelessWidget {
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
                'Commerce',
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
                          '        Commerce stream opens doors that lead to professional courses, which acts like foundations! For example, consider B.Com. (Bachelor of Commerce) course. This 3 years long undergraduate Degree program is like a foundation course. After completing it, one may choose from a wide variety of PG professional courses and specialize in many other fields/areas!',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'This diversity that commerce stream offers is one of the main factors that still attracts many 10th standard students. If you are good with numbers, good at analyzing and dealing with large chunks of data, have a taste in finance and economics, commerce stream will suit you!',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\nCommerce Subjects:\n',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Economics\nEnglish\nAccountancy\nBusiness Studies/Organisation of Commerce\nMathematics\nInformation Practices\nStatistics\n        Among the above mentioned subjects, the main ones are- Economics, English, Business Studies and Economics. Other subjects are optional ones',
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
                          'Chartered Accountant\nBanker\nLecturer\nTeacher\nLawyer\nGovernment employee\nManagement professional\nStatistician\nEconomist\nCompany Secretary\nAccountant\nInvestment banker\nActuary\nFinance analyst',
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
                          '1.)  B.COM.',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Which is the first professional course that comes to your mind while talking about commerce stream? Yes, B.Com. is the answer!\nB.Com. stands for Bachelor of Commerce. It is an undergraduate level Bachelor’s Degree course. Earlier, there used to exist a simple general B.Com. Degree course.\nToday, things have changed. There exists numerous B.Com. specialization programs, which focus on a particular field/domain. Some such courses are B.Com. IT, B.Com. Computer Science etc.\n",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '2.)  Chartered Accountancy (CA)',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'CA is a training program. It can’t be compared to a traditional Bachelor’s Degree course. In fact, there are no proper colleges offering this course! Self learning is enough to become a CA! In order to become a CA in India, you must pass a series of tests designed and conducted by the Governing body!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3.)  Bachelors course in Economics',
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
                          '4.)  Company Secretaryship course',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Like CA training, CS training also can’t be compared with any traditional Degree course! The CS course consists of three programmes – Foundation programme, executive programme and professional programme.\n10+2 passed students are eligible to pursue foundation programme! For a detailed guide, check this out – how to become a CS in India.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '5.)  Integrated Law courses',
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
                          '6.)  Management courses',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Have you always wanted to become a manager? Do you want to take up a senior administrative role in a company? If yes, management courses will be of help to you!\nMBA is the most valued and popular management course in India. Unfortunately, it is a PG level course.\nSo, what should be done if you want to pursue a good management program after 12th? There are some good undergraduate level management courses available in India. They are –\nBBA (Bachelor of Business Administration)\nBMS (Bachelor of Management Studies)\nIntegrated BBA + MBA program (5 years duration)\nIntegrated BBA + MBA program (5 years duration)\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '7.)  Teacher Training courses',
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
                          '8.)  Bachelor of Statistics',
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
                          '9.)  CMA course',
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
                          '10.)  Actuarial science',
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
                          '11.)  Other courses',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Apart from the above mentioned professional courses, commerce students are also eligible to pursue professional courses belonging to other streams (arts and science). For example, commerce students are eligible to pursue courses such as some B.Sc. courses, BA and BFA!\nBA\nB.Sc. (relevant courses like- Hospitality Management, Photography, Animation etc)\nB Social Work\nMass Communication and Journalism\nAnimation and Multimedia\nPerforming Arts\nLanguage Courses (Foreign Languages are promising)\nDiploma in Retail Management\nDiploma in Education Technology\nDiploma in Hotel Management\nAir Hostess/Cabin Crew training course\nDiploma in Event Management\nDiploma in Film-making and Video Editing\nANM Nursing Course\nGNM Nursing Course\n',
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
                          'A student planning to take up Commerce should have an analytical bent of mind\nThey should be money minded (and we mean it in a nice way)\nThey must have good communication skills\nThey must be good with negotiations\nMay be some of you have good bargaining skills, and that’s a plus\nThey must have an aptitude for numbers\nThey must be keenly interested in brands and business trends\nAnd leadership skills should have been at the top of the list but even then we couldn’t have stressed it enough.\nIf this describes you, then by all means, Commerce is just the right stream for you.\n',
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
