import 'package:flutter/material.dart';
import 'package:souls_tatoo/pages/home.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'generated/i18n.dart';

class SoulsTatooApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,


      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: 'Gloria Hallelujah',
        primaryColor: Color(0xff801515),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => new HomePage(),
      },
    );
  }
}
