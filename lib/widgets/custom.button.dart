import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
  final void Function() onTap;
  final String child;
  final Color color;
  const CustomButtom(
      {Key key, this.onTap, this.child, this.color = Colors.white})
      : super(key: key);

  @override
  _CustomButtomState createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: widget.color),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          widget.child,
          style: TextStyle(
            fontSize: 15,
            color: widget.color,
            inherit: false,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
