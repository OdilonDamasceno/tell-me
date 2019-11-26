import 'package:flutter/material.dart';
import 'package:tell_me/pages/loggedPage/logged.page.dart';
import 'package:tell_me/widgets/custom.button.dart';
import 'package:tell_me/widgets/custom.scaffold.dart';
import 'package:tell_me/widgets/custom.textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      topText: 'Tell-me',
      bottomText: 'Desenvolvido por Odilon Damasceno.',
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        primary: false,
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 20,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 20),
                child: Container(
                  child: Image.asset(
                    'assets/tellmename.png',
                    scale: 2.5,
                    color: Colors.pink,
                  ),
                ),
              ),
              CustomTextField(
                hintText: 'Nome de usuário',
                icon: Icon(
                  Icons.person,
                  color: Colors.pink,
                ),
              ),
              CustomTextField(
                hintText: 'Senha',
                notVisible: true,
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.pink,
                ),
              ),
              CustomButtom(
                child: 'Entrar',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoggedPage(),
                    ),
                  );
                },
                color: Colors.pink,
              )
            ],
          )
        ],
      ),
    );
  }
}
