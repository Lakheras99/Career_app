import 'package:flutter/material.dart';

class SciencePCB extends StatelessWidget {
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
                'Science (PCB)',
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
                          '1.)  MBBS',
                          style: TextStyle(
                            fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "This is the most popular choice among biology group students in India. The academic program is 5.5 years long. Out of that, 1 year is dedicated towards a compulsory rotating internship.\n\nMBBS is a very popular and favorite course among students. This is the main reason why securing a seat in a reputed MBBS institute has become very difficult! Government seats are in huge demand, as they charge low fees! Private medical colleges are known to charge very high fees!\n\nIn this age of super-speciality training, just an MBBS Degree won’t help you build a rewarding career. For better career prospects, one must follow up MBBS with PG courses such as MD, MS etc in a good discipline!\n",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '2.)  BDS',
                          style: TextStyle(
                            fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'If you want to become a dentist, this is the course you should choose! After MBBS, this is the second most popular professional course among PCB group students!\n\nThe academic program is 5 years long. Out of that, 1 year is dedicated towards compulsory internship. Just like MBBS, Government colleges charge low fees for BDS course. Private BDS colleges are known to charge higher fees\n\nLike MBBS, just a BDS Degree won’t help you build a rewarding career. For better career prospects, one must pursue PG courses like MDS and specialize in a good discipline.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3.)  BAMS',
                          style: TextStyle(
                            fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Ayurveda system of medicine and treatment is gaining popularity in the western world. Lack of side effects is an attractive advantage of ayurvedic system of medicine.\n\nIf you want to become an Ayurveda Doctor, you may pursue BAMS course. It is a 5.5 years long academic program. Out of that, one year is dedicated towards internship.\n\nAyurvedic Doctors have diverse job opportunities available in front of them. They may work at Government, Private or Nursing homes!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '4.)  BHMS',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Like Ayurveda, Homeopathic system of medicine also has fans around the world. If you want to become a homeopathic Doctor, BHMS course will be of help to you!\nThe academic program is 5.5 years long. Out of that, one year is dedicated towards internship.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '5.)  BACHELOR OF PHARMACY',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Do you want to become a pharmacist? If yes, B.Pharm. course will be of help to you! The academic program is 4 years long.\nAfter completing B.Pharm., one may take up a job or go for higher studies. M.Pharm. is an ideal PG course for B.Pharm. graduates\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '6.)  PHARM D',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Pharm D is a Doctoral level Pharmacy course. If you want to pursue a pharmacy course much more detailed than B.Pharm, this course will be of help to you!\nThe academic program is 6 years long. Out of that, one year is dedicated towards internship. At present, Pharm D professionals are in huge demand abroad!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '7.)  BACHELOR OF PHYSIOTHERAPY',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'This course is well known by the short name BPT. This academic program is 4.5 years long. The academic program is a holistic mixture of classroom lecture and practical sessions.\n\nAfter completing this academic program, graduates may take up a job or go for higher studies! Diverse job opportunities are available in front of physiotherapists. The are hired by both Government and private hospitals. Physiotherapists may even start their own rehabilitation clinic!\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '8.)  BUMS (UNANI)',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'This academic program focuses on the Unani system of medicine and surgery. The academic program is 5.5 years long. Out of that, one year is meant for internship.\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '9.)  B.SC. COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'B.Sc. stands for Bachelor of Science. B.Sc. course lasts for a period of 3 years. Like engineering, B.Sc. program is also available in various disciplines. Some of the notable B.Sc. courses ideal for PCB group students are –\n\nB.Sc. Biochemistry\nB.Sc. Biology\nB.Sc. Physics\nB.Sc. Chemistry\nB.Sc. Environmental Science\nB.Sc. Biotechnology\nB.Sc. Nursing\nB.Sc. Occupational Therapy\nB.Sc. Physiotherapy\nB.Sc. Radiology\bB.Sc. Bioinformatics\nB.Sc. Anthropology\nB.Sc. Microbiology\nB.Sc. Zoology\nB.Sc. Forensic Science\nB.Sc. Agriculture\nB.Sc. Pathology\nB.Sc. Speech Therapy\nB.F.Sc. (Fisheries Science)\nB.Sc. Horticulture\nB.Sc. Genetics\nB.Sc. Health Science and Nutrition\nB.Sc. Sports Science\nB.Sc. Audiology\nB.Sc. Botany\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '10.)  DIPLOMA COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'There also exists some good Diploma courses related to nursing, healthcare and paramedical studies, which PCB group students are eligible to pursue. Some such courses are:\n\nGNM\nANM\nDNHE\nDiploma in Nursing Care Assistant\nDiploma in Retail Management\nDiploma in Education Technology\nDiploma in Dairy Technology\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '11.)  OTHER COURSES',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Apart from the above mentioned professional courses, PCB group students are also eligible to pursue professional courses belonging to other streams (arts, humanities and commerce). For example, PCB group students are eligible to pursue courses such as B.Com., BA and BFA!\n\nHere are some such notable courses from other streams:\nBA\nB Social Work\nMass Communication and Journalism\nAnimation and Multimedia\nPerforming Arts\nLanguage Courses (Foreign Languages are promising)\nDiploma in Retail Management\nDiploma in Education Technology\nDiploma in Hotel Management\nShipping Management\nAir Hostess/Cabin Crew training course\nDiploma in Event Management\nDiploma in Film-making and Video Editing\n',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '12.)  PARAMEDICAL COURSES\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'For any healthcare institute to function efficiently, it needs skilled paramedics. How to become a paramedic, you may ask. In India, there are numerous paramedical courses to choose from!\n\nPCB group students have access to a wide variety of Paramedical courses – Degree, Diploma and Certificate programs! Some of the notable paramedical courses are :\n\nB.Sc. in Operation Theatre Technology\nB.Sc. in X Ray Technology\nB.Sc. in Radiography and Medical Imaging\nB.Sc. in Dialysis Technology\nB.Sc. in Medical Record Technology\nB.Sc. in Medical Laboratory Technology\nB.Sc. in Ophthalmic Technology\nBachelor of Occupational Therapy\nBachelor of Physiotherapy\nB.Sc. in Speech Therapy\nBASLP Course\nB.Sc. in Audiology\nB.Sc. in Anaesthesia Technology\nB.Sc. in Audiology and Speech Therapy\nB.Sc. in Optometry\nDiploma in Operation Theatre Technology (DOTT)\nDiploma in X Ray Technology\nDiploma in Radiography and Medical Imaging\nDiploma in ECG Technology\nDiploma in Dialysis Technology\nDiploma in Medical Record Technology\nDiploma in Medical Laboratory Technology (DMLT)\nDiploma in Ophthalmic Technology\nDiploma in Physiotherapy\nDiploma in Anaesthesia Technology\nDiploma in Nursing Care Assistant\nDiploma in Sanitary Inspector\nDiploma in Hearing Language and Speech (DHLS)\nDiploma in Dental Hygienist\nDiploma in Audiometry Technician\nDiploma in Audiology and Speech Therapy\nX-Ray/Radiology Assistant (or Technician)\nMedical Laboratory Assistant\nOperation Theatre Assistant\nNursing Care Assistant (Certificate)\nECG Assistant\nDental Assistant\nOphthalmic Assistant\nWhich\nCT Scan Technician\nDialysis Technician\nMRI Technician\n',
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
