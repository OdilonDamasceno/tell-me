import 'package:flutter/material.dart';

class StoriesPush extends StatefulWidget {
  @override
  _StoriesPushState createState() => _StoriesPushState();
}

class _StoriesPushState extends State<StoriesPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
