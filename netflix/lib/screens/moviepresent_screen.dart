import 'package:flutter/material.dart';

class MoviePresent extends StatefulWidget {
  @override
  _MoviePresentState createState() => _MoviePresentState();
}

class _MoviePresentState extends State<MoviePresent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.pink,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/spiderman.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(children: <Widget>[
                Positioned(
                  child: Container(
                    color: Colors.orangeAccent.withOpacity(0.5),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Image.asset(
                          'assets/images/netflix_logo.png',
                          width: 100.0,
                        ),
                        IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment(0.0, 1.5),
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    color: Colors.lightGreen,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
