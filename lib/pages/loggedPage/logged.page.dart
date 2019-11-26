import 'package:flutter/material.dart';
import 'package:tell_me/widgets/custom.button.flat.dart';
import 'package:tell_me/widgets/custom.message.dart';

class LoggedPage extends StatefulWidget {
  @override
  _LoggedPageState createState() => _LoggedPageState();
}

class _LoggedPageState extends State<LoggedPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> listAppBar = <Widget>[
      AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        title: Image.asset(
          'assets/tellmename.png',
          scale: 6,
          color: Colors.white,
        ),
        actions: <Widget>[
          FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    ];
    List drawers = [
      Container(
        color: Colors.white,
        width: 290,
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink,
                          Colors.pink[300],
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 110,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.pink,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'User Name',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '@username',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 10,
                    alignment: WrapAlignment.start,
                    children: [
                      CustomFlatButton(
                        text: 'Configurações',
                        icon: Icons.settings,
                        onTap: () {},
                      ),
                      CustomFlatButton(
                        text: 'Criar Grupo',
                        icon: Icons.group_add,
                        onTap: () {},
                      ),
                      CustomFlatButton(
                        text: 'Criar novo canal',
                        icon: Icons.chat_bubble_outline,
                        onTap: () {},
                      ),
                      CustomFlatButton(
                        text: 'Buscar novos usuários',
                        icon: Icons.person_pin_circle,
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 128.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border(
                      top: BorderSide(width: .5, color: Colors.black),
                    )),
                width: 200,
                height: 50,
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        child: ListView(),
      ),
    ];
    void changeIndex(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    List listBody = [
      ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            child: Wrap(
              runSpacing: 2,
              children: <Widget>[
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
                Message(
                  user: 'User Name',
                  message: 'Mensagem recebida!',
                  time: '21:15',
                ),
              ],
            ),
          ),
        ],
      ),
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.white,
      ),
    ];
    return Scaffold(
      appBar: listAppBar[_currentIndex],
      body: listBody[_currentIndex],
      drawer: _currentIndex == 0 ? drawers[0] : null,
      endDrawer: _currentIndex == 2 ? drawers[1] : null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Menu'),
            icon: Icon(Icons.markunread_mailbox),
          ),
          BottomNavigationBarItem(
            title: Text('Status'),
            icon: Icon(
              Icons.photo_size_select_actual,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Notificações'),
            icon: Icon(Icons.notifications_none),
            activeIcon: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
