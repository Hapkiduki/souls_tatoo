import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  Widget anothercard = Card(
    color: Colors.transparent,
    elevation: 8.0,
    child: Column(
      children: <Widget>[
        Stack(
          alignment: Alignment(0.5, 1.0),
          children: <Widget>[
            SizedBox(
                height: 216.0,
                width: 350.0,
                child: new Carousel(
                  images: [
                    new CachedNetworkImageProvider(
                        'http://hdfreewallpaper.net/wp-content/uploads/2015/08/arm-and-shoulder-battle-tattoo-for-men-hd-free-wallpapers.jpg'),
                    new CachedNetworkImageProvider(
                        'https://cdn.wallpapersafari.com/6/42/FwKIWJ.jpg'),
                    new CachedNetworkImageProvider(
                        "https://avatars.mds.yandex.net/get-pdb/234183/f637d7cb-5177-4e15-92d8-6406bcda2be4/s800")
                  ],
                  dotSize: 5.0,
                  animationCurve: Curves.bounceIn,
                  dotSpacing: 15.0,
                  dotColor: Colors.white,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.transparent,
                  borderRadius: true,
                  moveIndicatorFromBottom: 58.0,
                  noRadiusForIndicator: true,
                )),
            Container(
              width: 350.0,
              height: 60.0,
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: new Row(
                      children: <Widget>[
                        new CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.black,
                          backgroundImage: new CachedNetworkImageProvider(
                              'https://1.bp.blogspot.com/-h01tjS2T068/WG6hobd6dFI/AAAAAAAAFfc/IbghSb93QhMN-SUoyA9VO2bOB0RBWnGFwCLcB/s1600/gollum.jpg'),
                          foregroundColor: Colors.white,
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Text(
                          'Alan Brito Delgado',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Neucha',
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: new IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.star_border),
                      onPressed: () {
                        print('Favorite');
                      },
                      color: Colors.yellow,
                      splashColor: Colors.black,
                      tooltip: 'Favorito',
                    ),
                  )
                ],
              ),
              decoration:
                  BoxDecoration(color: Color(0xff801515).withOpacity(0.3)),
            )
          ],
        )
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        anothercard,
        anothercard,
        anothercard,
        anothercard,
      ],
    );
  }
}
