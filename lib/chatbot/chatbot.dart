import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChatBot extends StatefulWidget {
  ChatBot({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () async {
                  try {
                    final result = await InternetAddress.lookup('google.com');
                    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                      _handleSubmitted(_textController.text);
                    } else {
                      Fluttertoast.showToast(
                        msg: 'No Internet Connection',
                        toastLength: Toast.LENGTH_SHORT,
                      );
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
          ],
        ),
      ),
    );
  }

  void response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/career-xpbguc-7d5c3c01f789.json")
            .build();
    ChatMessage message;
    if (query == "") {
      message = ChatMessage(
        text: "Say Something?",
        name: "Bot",
        type: false,
      );
    } else {
      Dialogflow dialogflow =
          Dialogflow(authGoogle: authGoogle, language: Language.english);
      AIResponse response = await dialogflow.detectIntent(query);
      message = ChatMessage(
        text: response.getMessage() ??
            CardDialogflow(response.getListMessage()[0]).title,
        name: "Bot",
        type: false,
      );
    }
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      name: "You",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    response(text);
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
                'Chat Bot',
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
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: ListView.builder(
                          padding: EdgeInsets.all(8.0),
                          reverse: true,
                          itemBuilder: (_, index) => _messages[index],
                          itemCount: _messages.length,
                        ),
                      ),
                      Divider(height: 1.0),
                      Container(
                        decoration:
                            BoxDecoration(color: Theme.of(context).cardColor),
                        child: _buildTextComposer(),
                      ),
                    ],
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

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  Widget otherMessage(context) {
    return Text(text, textAlign: TextAlign.start,);
      // Container(
      //   margin: const EdgeInsets.only(right: 16.0),
      //   child: CircleAvatar(child: Text('B')),
      // ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
        //     Container(
        //       margin: const EdgeInsets.only(top: 5.0),
        //       child: Text(text),
        //     ),
        //   ],
        // );
  }

  Widget myMessage(context) {
    // return Column(
    //     crossAxisAlignment: CrossAxisAlignment.end,
    //     children: <Widget>[
    //       Text(this.name, style: Theme.of(context).textTheme.subhead),
    //       Container(
    //         margin: const EdgeInsets.only(top: 5.0),
    //         child: Text(text),
    //       ),
    //     ],);
    return Text(text, textAlign: TextAlign.end,);
      // Container(
      //   margin: const EdgeInsets.only(left: 16.0),
      //   child: CircleAvatar(
      //       child: Text(
      //     this.name[0],
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   )),
      // ),
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 8, bottom: 8, left: this.type ? 0 : 16, right: this.type ? 16 : 0),
          alignment: this.type ? Alignment.centerRight : Alignment.centerLeft,
      //margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        margin:
            this.type ? EdgeInsets.only(left: 20) : EdgeInsets.only(right: 20),
        padding: EdgeInsets.only(top: 14, bottom: 14, left: 16, right: 16),
        decoration: BoxDecoration(
            borderRadius: this.type
                ? BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(23))
                : BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomRight: Radius.circular(23)),
            gradient: LinearGradient(
              colors: this.type ? [Colors.blue.withOpacity(0.6), Colors.blue.withOpacity(0.8)] : [Colors.orange.withOpacity(0.8), Colors.orange.withOpacity(0.6)],
              // this.type
              //     ? [const Color(0xff007EF4), const Color(0xff2A75BC)]
              //     : [Colors.blue, Colors.blue.withOpacity(0.5)],
                  //: [const Color(0x1AFFFFFF), const Color(0x1AFFFFFF)],
            )),
        child: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
