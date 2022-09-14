import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  _profileData() async {
    var s = await SharedPreferences.getInstance();
    var key = s.getString('key');
    var dbRef = FirebaseDatabase.instance.reference().child('Users');
    if (key == null) {
      var snap = await dbRef.once();
      var a = await FirebaseAuth.instance.currentUser();
      for (var i in snap.value.keys) {
        if (snap.value[i]['email'] == a.email) {
          var s = await SharedPreferences.getInstance();
          s.setString('key', i);
          return snap.value[i];
        }
      }
    } else {
      var info = await dbRef.child(key).once();
      return info.value;
    }
  }

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
                'Profile',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
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
                  child: Center(
                    child: SingleChildScrollView(
                      child: FutureBuilder(
                        future: _profileData(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                                      ConnectionState.none &&
                                  snapshot.hasData == null ||
                              snapshot.data == null) {
                            return Padding(padding: EdgeInsets.all(10), child: CircularProgressIndicator());
                          } else {
                            var v = snapshot.data;
                            return Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 45.0,
                                  child: Icon(Icons.person, size: 50),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15.0)),
                                Text(
                                  v['name'],
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20.0)),
                                Container(
                                    height: 1.5,
                                    color: Colors.grey.withOpacity(0.2)),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(right: 30)),
                                      Text(
                                        'Personal Information',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.8),
                                        ),
                                      ),
                                    ],),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Age",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['age'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Mobile Number",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['mob'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Email Id",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['email'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Container(
                                    height: 1.5,
                                    color: Colors.grey.withOpacity(0.2)),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Expanded(
                                      child: Text(
                                        'Academic Information',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black.withOpacity(0.8),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      child: Icon(Icons.edit),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "English",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['english'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Maths",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['maths'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Science",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['science'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Hindi",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['hindi'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Sanskrit/Marathi",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['marathi'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 30)),
                                    Text(
                                      "Social Studies",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      v['ss'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }
                        },
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
