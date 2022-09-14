import 'dart:convert';
import 'dart:io';

import 'package:careerapp/home/test_result.dart';
import 'package:careerapp/model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  TabController _tabController;
  Future fetchData;
  var n = 0;

  Future fetchPredData(List values) async {
    final response = await http.post(
      'http://vivekmaurya.pythonanywhere.com/predict',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode([
        {
          '0': values[0],
          '1': values[1],
          '2': values[2],
          '3': values[3],
          '4': values[4],
          '5': values[5],
          '6': values[6],
          '7': values[7],
          '8': values[8],
          '9': values[9],
          '10': values[10],
          '11': values[11],
          '12': values[12],
          '13': values[13],
          '14': values[14],
          '15': values[15],
          '16': values[16],
          '17': values[17],
          '18': values[18],
          '19': values[19],
          '20': values[20],
          '21': values[21],
          '22': values[22],
          '23': values[23],
          '24': values[24],
          '25': values[25],
          '26': values[26],
        }
      ].toString()),
    );
    //return response.body;
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load');
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 27);
    //_loadingAnimController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  // void forwardAnimation() {
  //   MediaQuery.
  //   _percentAnim = Tween<double>().animate(_loadingAnimController);
  // }

  var buttonOp = 0.5;

  List a = [
    [
      'Are you a Problem Solver and wise decison maker?',
      'Do you find Mathematics fun?',
      'Are you a Discoverer who loves to dig into history/political science?',
      'Would you be interested in gaining practical knowledge about the technical stuff?',
      'Do you think you are patriotic enough to contribute to your nation by securing it from enemies?',
      'Do you think you can profoundly impact lives of children?',
      'Are you interested in constructing infrastructure and designing of buildings and models?',
      'Are you a fashion conscious person and who loves to follow new pattern of clothing?',
      'Are you interested in finding flaws and bugs in Application?',
      'Are you interested in developing, solving practical problems and make informed decisions both individually and collectively?',
      'Are you interested in learning business study, economics and accountancy?',
      'Do you think you have a creative bent of mind which is receptive to new thoughts, ideas and perspectives?',
      'Do you think yourself as a tech nerd?',
      'Are you good in doing physical tasks?',
      'Do you think you can make a difference in someones lives?',
      'Would you love to model or draft buildings or interior at work?',
      'Are you good in visualizing different fashion trends?',
      'Do you think you design websites for any organization?',
      'Are you interested in discovering and learning new Technologies and thinking creatively?',
      'Are you interested in learning study of Trade and Business activities such as exchange of goods and services?',
      'Are you interested in philosophical studies?',
      'Do you keep track about recent trends in technologies and have ever wondered about how things works?',
      'Are you a person with good mannersim and ethics?',
      'Are you good in communicating and also explaining others about things or incident?',
      'Do you have a knack for sketching multi storey infrastructure?',
      'Do you feel curious about clothing and accessories?',
      'Are you interested in designing content which people use daily?',
    ],
    [
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
    ],
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
                'Test',
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: questionList(),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Swipe left or right to see the next Question',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Stack(
                                  children: <Widget>[
                                    AnimatedContainer(
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      margin: EdgeInsets.only(
                                          right: constraints.maxWidth -
                                              n *
                                                  (1 / 27) *
                                                  constraints.maxWidth),
                                      duration: Duration(milliseconds: 400),
                                    ),
                                    Align(
                                      child: Center(
                                        child: Text(
                                          n.toString() + '/27',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black.withOpacity(0.5)),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Opacity(
                opacity: buttonOp,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 40,
                  child: RaisedButton(
                    child: Text(
                      'Submit',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    textColor: Colors.white,
                    color: Color(0xffffa92f),
                    onPressed: buttonOp == 0.5
                        ? null
                        : () async {
                            try {
                              final result =
                                  await InternetAddress.lookup('google.com');
                              if (result.isNotEmpty &&
                                  result[0].rawAddress.isNotEmpty) {
                                fetchData = fetchPredData(a[1]);
                                fetchData.then((onValue) async {
                                  var pred = onValue['prediction'];
                                  var f =
                                      await FirebaseAuth.instance.currentUser();
                                  UserAns userAns =
                                      UserAns(f.email, a[1], pred);
                                  FirebaseDatabase.instance
                                      .reference()
                                      .child('UsersTestData')
                                      .push()
                                      .set(userAns.toJson());
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TestResult(pred)));
                                }).catchError((onError) {
                                  print(onError);
                                });
                              } else {
                                Fluttertoast.showToast(
                                    msg: 'No Internet Connection',
                                    toastLength: Toast.LENGTH_SHORT);
                              }
                            } on SocketException catch (_) {
                              Fluttertoast.showToast(
                                msg: 'No Internet Connection',
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }
                          },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget questions(String q, int i) {
    return Container(
      child: ListView(
        children: <Widget>[
          Text(
            'Q.' + (i + 1).toString() + '     ' + q + '\n',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          RadioListTile(
            value: 1,
            title: Text('Totally Agree', style: TextStyle(fontSize: 16)),
            selected: a[1][i] == 1,
            groupValue: a[1][i],
            onChanged: (value) {
              setState(() {
                _progressBar(i);
                a[1][i] = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            title: Text('Agree', style: TextStyle(fontSize: 16)),
            groupValue: a[1][i],
            selected: a[1][i] == 2,
            onChanged: (value) {
              setState(() {
                _progressBar(i);
                a[1][i] = value;
              });
            },
          ),
          RadioListTile(
            value: 3,
            title: Text('Disagree', style: TextStyle(fontSize: 16)),
            groupValue: a[1][i],
            selected: a[1][i] == 3,
            onChanged: (value) {
              setState(() {
                _progressBar(i);
                a[1][i] = value;
              });
            },
          ),
          RadioListTile(
            value: 4,
            title: Text('Totally Disagree', style: TextStyle(fontSize: 16)),
            groupValue: a[1][i],
            selected: a[1][i] == 4,
            onChanged: (value) {
              setState(() {
                _progressBar(i);
                a[1][i] = value;
              });
            },
          ),
        ],
      ),
    );
  }

  _progressBar(i) {
    if (a[1][i] == -1) {
      n += 1;
    }
    if (n == 27) {
      buttonOp = 1.0;
    }
  }

  List<Widget> questionList() {
    List<Widget> l = [];
    for (int i = 0; i < 27; i = i + 1) {
      l.add(questions(a[0][i], i));
      // if (a[1][i] == -1) {
      //   buttonOp = 0.5;
      // } else {
      //   buttonOp = 1.0;
      // }
    }
    return l;
  }
}
