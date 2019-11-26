import 'package:flutter/material.dart';
import 'package:tell_me/widgets/custom.button.dart';
import 'package:tell_me/widgets/custom.scaffold.dart';
import 'package:tell_me/widgets/custom.textfield.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      topText: 'Tell-me App',
      bottomText: 'Desenvolvido por Odilon Damasceno.',
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        primary: false,
        children: <Widget>[
          Wrap(
            runSpacing: 20,
            alignment: WrapAlignment.center,
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
                icon: Icon(
                  Icons.person_add,
                  color: Colors.pink,
                ),
                prefix: Text('@'),
                hintText: 'Nome de usuário',
              ),
              CustomTextField(
                icon: Container(
                  child: Icon(Icons.mail, color: Colors.pink),
                ),
                hintText: 'Digite seu email',
                type: TextInputType.emailAddress,
              ),
              CustomTextField(
                hintText: 'Digite sua senha',
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.pink,
                ),
                notVisible: true,
              ),
              CustomButtom(
                child: 'Cadastrar',
                onTap: () {},
                color: Colors.pink,
              )
            ],
          )
        ],
      ),
    );
  }
}
