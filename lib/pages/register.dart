import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              image: new AssetImage("images/wallpaper2.jpg"),
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
                          labelText: 'Alias',
                          filled: true,
                          labelStyle: TextStyle(
                              fontFamily: 'Neucha', color: Colors.white)),
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.white,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Contraseña',
                          filled: true,
                          labelStyle: TextStyle(
                              fontFamily: 'Neucha', color: Colors.white)),
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Telefono - Celular',
                        labelStyle: TextStyle(
                            fontFamily: 'Neucha', color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ButtonTheme(
                        minWidth: 260.0,
                        height: 46.0,
                        child: RaisedButton(
                          child: Text(
                            'REGISTRARSE',
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
                    ),
                    
                  ],
                ),
              ),
              //login_with,
              new Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: 'backtologin',
                        backgroundColor: Colors.white,
                        tooltip: 'Login',
                        child: new Icon(
                          Icons.arrow_back,
                          size: 42.0,
                          color: Color(0xff801515),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                      ),
                      
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
