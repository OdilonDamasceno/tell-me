import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Widget prefix;
  final String hintText;
  final TextInputType type;
  final Widget icon;
  final bool notVisible;
  const CustomTextField({
    Key key,
    this.prefix,
    this.hintText,
    this.type,
    this.icon,
    this.notVisible = false,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        scrollPadding: EdgeInsets.only(left: 10),
        keyboardType: widget.type,
        autovalidate: true,
        decoration: InputDecoration(
          prefix: widget.prefix,
          icon: widget.icon,
          hintText: widget.hintText,
        ),
        obscureText: widget.notVisible,
      ),
    );
  }
}
