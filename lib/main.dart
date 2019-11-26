import 'package:flutter/material.dart';
import 'package:tell_me/pages/choiseLoginPage/choise.login.page.dart';

void main() => runApp(TellMe());

class TellMe extends StatefulWidget {
  @override
  _TellMeState createState() => _TellMeState();
}

class _TellMeState extends State<TellMe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          backgroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'TellMe',
      home: ChoisePage(),
    );
  }
}
