import 'package:flutter/material.dart';
import 'package:tell_me/pages/choiseLoginPage/createAccount/create.account.dart';
import 'package:tell_me/pages/choiseLoginPage/loginPage/login.page.dart';
import 'package:tell_me/widgets/custom.button.dart';
import 'package:tell_me/widgets/custom.rich.text.dart';

class ChoisePage extends StatefulWidget {
  @override
  _ChoisePageState createState() => _ChoisePageState();
}

class _ChoisePageState extends State<ChoisePage> {
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Selecione um idioma.'),
          content: Container(
            height: 220,
            child: ListView(
              children: <Widget>[Row()],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.pink[400], Colors.pink[300]],
        ),
      ),
      child: ListView(
        primary: false,
        children: [
          Wrap(
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 180, bottom: 20),
                child: Container(
                  child: Image.asset(
                    'assets/tellmename.png',
                    scale: 2.5,
                    color: Colors.white,
                  ),
                ),
              ),
              CustomButtom(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => LoginPage()));
                },
                child: 'Entrar',
              ),
              CustomButtom(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => CreateAccount(),
                    ),
                  );
                },
                child: 'Criar conta',
              ),
              CustomRichText(
                color: Colors.white,
                simpleText: 'Está com problemas? ',
                presText: 'Entre em contato.',
                onTap: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => RecoverPage(),
                    ),
                  );*/
                },
              ),
              SizedBox(),
              GestureDetector(
                onTap: _showDialog,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 8.0),
                  child: Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'português do Brasil',
                          style: TextStyle(inherit: false),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
