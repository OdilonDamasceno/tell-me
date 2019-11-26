import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatefulWidget {
  final String simpleText;
  final String presText;
  final void Function() onTap;
  final Color color;
  const CustomRichText({
    Key key,
    this.simpleText,
    this.presText,
    this.onTap,
    this.color,
  }) : super(key: key);
  @override
  _CustomRichTextState createState() => _CustomRichTextState();
}

class _CustomRichTextState extends State<CustomRichText> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: widget.simpleText,
        children: <TextSpan>[
          TextSpan(
            text: widget.presText,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: widget.color,
            ),
            recognizer: TapGestureRecognizer()..onTap = widget.onTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(inherit: false),
    );
  }
}
