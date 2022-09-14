import 'package:firebase_database/firebase_database.dart';

class Users {
  String id, name, email, age, mob, english, maths, science, hindi, marathi, ss;
  Users(this.name, this.email, this.age, this.mob, this.english, this.maths,
      this.science, this.hindi, this.marathi, this.ss);
  toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
      'mob': mob,
      'english': english,
      'maths': maths,
      'science': science,
      'hindi': hindi,
      'marathi': marathi,
      'ss': ss
    };
  }

  Users.fromSnapshot(DataSnapshot snapshot)
      : id = snapshot.key,
        name = snapshot.value['name'],
        email = snapshot.value['email'],
        age = snapshot.value['age'],
        mob = snapshot.value['mob'],
        english = snapshot.value['english'],
        maths = snapshot.value['maths'],
        science = snapshot.value['science'],
        hindi = snapshot.value['hindi'],
        marathi = snapshot.value['marathi'],
        ss = snapshot.value['ss'];
}

class UserAns {
  String email;
  List values, streams;
  UserAns(this.email, this.values, this.streams);
  toJson() {
    return {
      'email': email,
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
      '27': streams[0],
      '28': streams[1],
      '29': streams[2],
      '30': streams[3],
      '31': streams[4],
      '32': streams[5],
      '33': streams[6],
      '34': streams[7],
      '35': streams[8],
    };
  }
}
