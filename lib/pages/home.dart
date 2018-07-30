import 'package:flutter/material.dart';
import 'package:souls_tatoo/fragments/home.dart';
import 'package:souls_tatoo/fragments/profile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:souls_tatoo/generated/i18n.dart';

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

typedef void MyCallback(Widget fragment, bool has_appbar, String title);

class _MyHomePageState extends State<MyHomePage> {
  var bottom_bar;
  bool has_appbar = true;
  String title;
  Widget widgetForBody = HomeFragment();


  //Widget widgetForBody = HomeFragment();
  void _changeBody(Widget fragment, bool has_apbar, String titleT) {
    setState(() {
      widgetForBody = fragment;
      has_appbar = has_apbar;
      title = titleT.isNotEmpty ? titleT : title;
    });
  }

  @override
  Widget build(BuildContext context) {
    title = S.of(context).Home;
    final drawerItems = [
      new DrawerItem(S.of(context).Home, Icons.home, 0, fragment: HomeFragment()),
      new DrawerItem(S.of(context).MyProfile, Icons.person, 0,
          fragment: ProfileFragment(), route: '/profile'),
      new DrawerItem(S.of(context).Logout, Icons.exit_to_app, 1, route: '/'),
    ];
    var drawerOptions = <Widget>[];
    for (var i = 0; i < drawerItems.length; i++) {
      var item = drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(item.icon),
        title: new Text(item.title),
        onTap: () {
          Navigator.pop(context);
          if (item.action < 1) {
            setState(() {
              has_appbar = true;
              widgetForBody = item.fragment;
              title = item.title;
              bottom_bar = null;
              if (item.route == '/profile') {
                has_appbar = false;
                bottom_bar = MyBottomBar(_changeBody);
              }
              //
            });
          } else {
            Navigator.pushReplacementNamed(context, item.route);
          }
        },
      ));
    } //_onSelectItem(i),));

    return Scaffold(
      appBar: has_appbar
          ? AppBar(
              title: Text(title),
            )
          : null,
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
                      backgroundImage: new CachedNetworkImageProvider(
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
                  image: CachedNetworkImageProvider(
                      'https://loremflickr.com/400/200/meganfox'),
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
      bottomNavigationBar: bottom_bar,
    );
  }
}

class MyBottomBar extends StatefulWidget {
  //final VoidCallback changeBody;
  final MyCallback callback;
  MyBottomBar(this.callback);
  @override
  _MyBottomBar createState() => _MyBottomBar();
}

class _MyBottomBar extends State<MyBottomBar> {
  int selected_tab = 0;
  Widget widget_o = Container(
    height: 200.0,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (selected) {
        setState(() {
          selected_tab = selected;
          if (selected == 2) {
            widget.callback(HomeFragment(), true, 'Mis Favoritos');
          }
        });
      },
      currentIndex: selected_tab,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text(S.of(context).BTData),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text(S.of(context).BTDesign),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text(S.of(context).BTFavorites),
        ),
      ],
    );
  }
}
