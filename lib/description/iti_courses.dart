import 'package:flutter/material.dart';

class ITICourses extends StatelessWidget {
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
                'ITI Courses',
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
                          '        ITI (Industrial Training Institute):-\nITI stands for Industrial Training Institute. ITIs offer training in various trades. ITI trades and courses focus on skill development in students.\nITIs offer training in various trades. Two main types of trade are –\n\nEngineering Trades\nNon-Engineering Trades\n\nEngineering trades are related to the field of engineering studies. Courses available under this trade are technical in nature.\nNon-Engineering trades are mostly related to computers, languages and soft skills.',
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
                          '1.)  ITI ELECTRICIAN COURSE:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "It is a job oriented vocational trade. As the name suggests, ITI Electrician trade focuses on various aspects of electricity such as – wiring (residential, commercial and industrial), home appliances, electrical machines, lighting, electrical installations etc.The course thus aims at developing a skilled work-force of qualified electricians in India.\nElectrician trade trains students in areas such as –\n\nWiring (residential, commercial and industrial)\nLighting installation (residential, commercial and outdoors)\nPower generation, distribution and transmission systems\nInsulators\nEarthing\nCapacitors and electrical circuits\nBatteries\nWorking, servicing and repair of electrical appliances (motors, fans, pumps, home appliances, AC, fridge etc)\nTransformers\nAC/DC systems\n\nTRADE OVERVIEW\nName of the Trade:	Electrician\nCourse Duration:	2 years\nEligibility Criteria:	10th passed\nType of Course:	ITI Vocational Training\n\nINSTITUTES AND ADMISSION PROCESS\nMany private and government operated ITIs across India are offering electrician trade. Most of them rely on merit based admission process. Some ITIs are also know to rely on direct admission process.\n\nSYLLABUS\nThe syllabus can roughly be divided into two parts –\nTrade theory\nTrade practical\n\nCAREER PROSPECTS AND JOB OPPORTUNITIES\nITI passed electricians have diverse job opportunities available in front of them. They have access to both private sector and government sector jobs. Besides that, self employment is another opportunity available in front of them.\n\nSome of the well known private sector recruiters are –\nMNCs (electrician)\nPower production and transmission companies\nElectrical equipment manufacturing firms\nElectrical appliance manufacturing firms\nRefineries\nIndustries that use electrical machine\n\nSome of the well known government sector recruiters are –\nState-wise electricity boards\nPWDs\nMunicipal Corporations\nArmed Forces\nPSUs\n\nIn the above mentioned work setups, ITI electrical trade passed students may don the following roles –\nElectrician\nWire man\nLineman\nSupervisor\nTechnician\nRepair expert\n",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '2.)  ITI Fireman Course:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'As the name suggests, ITI Fireman trade focuses on various aspects of fireman and safety training such as – firefighting equipment, firefighting techniques, general knowledge of physics and chemistry, emergency medical assistance, inspection of accident scene, rescue operations etc.\nThe main aim of this trade is to provide vocational training to candidates and turn them into skilled and qualified firefighters! The course thus aims at developing a skilled work-force of qualified firefighters in India.\n\nITI Fireman course trains students in areas such as –\n\nFirefighting equipment\nFirefighting techniques\nProper use of ladders, hydraulics, hoses etc\nProper use of hydrants\nRescue operations\nCrowd management\nFirst Aid and Emergency medical assistance\nInspecting accident/crime scene and assisting Police with investigation\nOverview\nName of course:	ITI Fireman course\nDuration:	1 year\nEligibility Criteria:	10th passed\n\nTYPE OF COURSE\nIt is a Vocational Training Certificate course.\n\nDURATION\n1 year (theory+practical).\nELIGIBILITY CRITERIA\n10th pass (under 10+2 system of schooling) is the minimum qualification required to pursue this course.\nCandidate should be physically and medically fit. Minimum height required – 167cm. Chest: 80-86cm. Weight should not be less than 50Kg.\nPhysical standards required may vary from one institute to another.\n\nINSTITUTES AND ADMISSION PROCESS\nMany private and government operated ITIs across India are offering ITI Fireman trade. Most of them rely on merit based admission process. Some ITIs are also know to rely on direct admission process.\n\nSYLLABUS\nThe syllabus can roughly be divided into two parts –\nTrade theory\nTrade practical\n\nIMPORTANT TRADE THEORY SUBJECTS –\nBasic chemistry\nHydrants, Gases and Flammable Liquids\nFire Science\nFire Safety\nFire Prevention\nFire Protection\nFire Service Operation\nFirefighting equipment\nFire Service Administration\n\nIMPORTANT TRADE PRACTICAL SUBJECTS –\nFamiliarization with the institute\nPhysical Training\nUnarmed Drill\nRescue\nFirst Aid\nMaintenance\nFamiliarization with firefighting equipment\n\nCAREER PROSPECTS AND JOB OPPORTUNITIES\nITI Fireman course passed candidates have diverse job opportunities available in front of them. They have access to both Government and Private sector jobs.\n\nSome of the well known recruiters are –\n\nGovernment Fire Dept\nGovernment Organizations\nPSUs\nIndustries\nMNCs\nTraining Institutes\nArmed Forces\nSecurity Agencies\n',
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
