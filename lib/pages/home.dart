import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack
            //Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
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
            new ListTile(
              leading: Icon(Icons.person),
              title: Text('Mi Perfil'),
              onTap: () {},
            ),
            new ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Cerrar Sesión'),
              onTap: (){
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
