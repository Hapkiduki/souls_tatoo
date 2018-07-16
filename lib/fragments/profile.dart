import 'package:flutter/material.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Container(
          height: 225.0,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage('https://loremflickr.com/400/200/meganfox'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color(0xff801515).withOpacity(0.7), BlendMode.srcATop),
            ),
          ),
          child: Center(
            child: Text('data'),
          ),
        )
      ],
    );
  }
}
