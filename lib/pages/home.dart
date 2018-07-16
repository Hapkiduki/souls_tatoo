import 'package:flutter/material.dart';
import 'package:souls_tatoo/fragments/home.dart';
import 'package:souls_tatoo/fragments/profile.dart';

class DrawerItem {
  String title;
  IconData icon;
  int action;
  Widget fragment;
  String route = '';
  DrawerItem(this.title, this.icon, this.action, {this.fragment, this.route});
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final drawerItems = [
    new DrawerItem('Inicio', Icons.home, 0, fragment: HomeFragment()),
    new DrawerItem('Mi Perfil', Icons.person, 0, fragment: ProfileFragment()),
    new DrawerItem('Cerrar Sesión', Icons.exit_to_app, 1, route: '/'),
  ];
  String title = 'Inicio';
  Widget widgetForBody = HomeFragment();

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < drawerItems.length; i++) {
      var item = drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(item.icon),
        title: new Text(item.title),
        //selected: i == _selectedDrawerIndex,
        onTap: () {
          Navigator.pop(context);
          if (item.action < 1) {
            setState(() {
              widgetForBody = item.fragment;
              title = item.title;
            });
          } else {
            Navigator.pushReplacementNamed(context, item.route);
          }
        },
      ));
    } //_onSelectItem(i),));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: widgetForBody,
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://loremflickr.com/400/200/meganfox'),
                    ),
                    Text(
                      'Megan Fox',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      'De Armenia,Quindío',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Neucha'),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      NetworkImage('https://loremflickr.com/400/200/meganfox'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color(0xff801515).withOpacity(0.7), BlendMode.srcATop),
                ),
              ),
            ),
            Column(
              children: drawerOptions,
            ),
          ],
        ),
      ),
    );
  }
}
