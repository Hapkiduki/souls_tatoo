import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:souls_tatoo/generated/i18n.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  final txtEmail = new TextEditingController();
  final txtDescription = new TextEditingController();
  final txtAlias = new TextEditingController();
  final txtPhone = new TextEditingController();

//  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  //https://loremflickr.com/400/200/meganfox
  @override
  Widget build(BuildContext context) {
    txtEmail.text = 'megan@gmail.com';
    txtAlias.text = 'Megan fox';
    txtPhone.text = '323 4871805';
    txtDescription.text = 'Soy una joven trabajadora';
    return new CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          title: Text(S.of(context).MyProfile),
          expandedHeight: 250.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                      'https://loremflickr.com/400/200/meganfox'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color(0xff801515).withOpacity(0.7), BlendMode.srcATop),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 68.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment(1.4, 0.8),
                        children: <Widget>[
                          CircleAvatar(
                            radius: 70.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: new CachedNetworkImageProvider(
                                'https://loremflickr.com/400/200/meganfox'),
                          ),
                          FloatingActionButton(
                            heroTag: 'take_photo_profile',
                            onPressed: () {},
                            tooltip: 'Cambiar Foto',
                            backgroundColor: Color(0xff795548),
                            child: Icon(
                              Icons.camera_alt,
                              size: 35.0,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Megan Fox',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      Text(
                        'De Armenia,Quindío',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Neucha'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        new SliverToBoxAdapter(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: txtEmail,
                    style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.grey,
                        fontSize: 20.0),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Correo Electrónico',
                        filled: true,
                        labelStyle: TextStyle(
                            fontFamily: 'Neucha', color: Colors.black)),
                  ),
                  TextField(
                    controller: txtAlias,
                    style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.grey,
                        fontSize: 20.0),
                    decoration: InputDecoration(
                        labelText: 'Alias',
                        filled: true,
                        labelStyle: TextStyle(
                            fontFamily: 'Neucha', color: Colors.black)),
                  ),
                  TextField(
                    controller: txtPhone,
                    style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.grey,
                        fontSize: 20.0),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: 'Telefono - Celular',
                        filled: true,
                        labelStyle: TextStyle(
                            fontFamily: 'Neucha', color: Colors.black)),
                  ),
                  TextField(
                    controller: txtDescription,
                    style: TextStyle(
                        fontFamily: 'Neucha',
                        color: Colors.grey,
                        fontSize: 20.0),
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    decoration: InputDecoration(
                        labelText: 'Descripción de mí',
                        filled: true,
                        labelStyle: TextStyle(
                            fontFamily: 'Neucha', color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: Color(0xff795548),
                      child: Text(
                        'CAMBIAR CONTRASEÑA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // return object of type Dialog
                            return AlertDialog(
                              title: new Text("Alert Dialog title"),
                              content: new Text("Alert Dialog body"),
                              actions: <Widget>[
                                // usually buttons at the bottom of the dialog
                                new FlatButton(
                                  child: new Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        //BottomAppBar()
      ],
    );
  }
}
