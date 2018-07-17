import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  Widget logo = Center(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('images/ic_launcher.png'),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: null,
      body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/wallpaper.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Color(0xff801515).withOpacity(0.7), BlendMode.srcATop),
            ),
          ),
          child: new ListView(
            children: <Widget>[
              logo,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Correo Electrónico',
                          filled: true,
                          labelStyle: TextStyle(
                              fontFamily: 'Neucha', color: Colors.white)),
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        filled: true,
                        labelStyle: TextStyle(
                            fontFamily: 'Neucha', color: Colors.white),
                      ),
                      obscureText: true,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Recordarme',
                            style: TextStyle(
                              fontFamily: 'Neucha',
                              color: Colors.white,
                            ),
                          ),
                          Switch(
                            onChanged: (v) {},
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xffBDBDBD),
                            inactiveTrackColor: Color(0xff795548),
                            inactiveThumbColor: Colors.white,
                            value: false,
                          )
                        ],
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 260.0,
                      height: 46.0,
                      child: RaisedButton(
                        child: Text(
                          'INICIAR SESIÓN',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        color: Colors.white,
                        textColor: Color(0xff801515),
                        elevation: 4.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            '¿Recuperar contraseña?',
                            style: TextStyle(
                              fontFamily: 'Neucha',
                            ),
                          ),
                          onPressed: () {},
                          textColor: Colors.white,
                        ),
                        FlatButton(
                          child: Text(
                            'Registrarse',
                            style: TextStyle(
                              fontFamily: 'Neucha',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/register');
                          },
                          textColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //login_with,
              new Column(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    child: Text(
                      'Iniciar Sesión Con',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: 'Facebook',
                        backgroundColor: Colors.blueAccent,
                        tooltip: 'Facebook',
                        child: new Icon(
                          MdiIcons.facebook,
                          size: 42.0,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(width: 12.0),
                      FloatingActionButton(
                        heroTag: 'Instagram',
                        backgroundColor: Colors.redAccent,
                        tooltip: 'Instagram',
                        child: new Icon(
                          MdiIcons.instagram,
                          size: 42.0,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(width: 12.0),
                      FloatingActionButton(
                        heroTag: 'Twiter',
                        backgroundColor: Colors.blue,
                        tooltip: 'Twiter',
                        child: new Icon(
                          MdiIcons.twitter,
                          size: 42.0,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              )
            ],
          ) 
          ),
    );
  }
}
