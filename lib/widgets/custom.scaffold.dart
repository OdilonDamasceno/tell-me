import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final String topText;
  final String bottomText;
  final Widget body;
  const CustomScaffold({Key key, this.topText, this.bottomText, this.body})
      : super(key: key);
  @override
  _CustomScafolldState createState() => _CustomScafolldState();
}

class _CustomScafolldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back, color: Colors.pink),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          widget.topText,
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: widget.body,
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: .2,
              color: Colors.black,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.bottomText,
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
