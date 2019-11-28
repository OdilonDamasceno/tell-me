import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  final Widget child;
  final void Function() onTap;
  const Stories({Key key, this.child, this.onTap}) : super(key: key);
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: Duration(microseconds: 100),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(blurRadius: 2),
            ]),
        width: 108 * 1.5,
        height: 192 * 1.5,
        child: widget.child,
      ),
    );
  }
}
