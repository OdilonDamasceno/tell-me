import 'package:flutter/material.dart';

class CustomFlatButton extends StatefulWidget {
  final String text;
  final Color color;
  final void Function() onTap;
  final IconData icon;
  const CustomFlatButton({
    Key key,
    @required this.text,
    this.color = Colors.pink,
    this.onTap,
    this.icon = Icons.do_not_disturb,
  }) : super(key: key);
  @override
  _CustomFlatButtonState createState() => _CustomFlatButtonState();
}

class _CustomFlatButtonState extends State<CustomFlatButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 40,
      child: SizedBox.expand(
        child: FlatButton(
          onPressed: widget.onTap,
          child: Row(
            children: <Widget>[
              Icon(
                widget.icon,
                color: widget.color,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: widget.color,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
