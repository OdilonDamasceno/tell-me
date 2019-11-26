import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  final String user;
  final String message;
  final String time;

  const Message({Key key, this.user, this.message, this.time}) : super(key: key);
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: .1),
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: .2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.pink,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'User Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text('mensagem recebida.'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 40),
            child: Text(
              '21:15',
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
