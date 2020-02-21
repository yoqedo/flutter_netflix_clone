import 'package:flutter/material.dart';
import 'package:netflix/model/moviepr_model.dart';

class MovieScreen extends StatefulWidget {
  final Movie movie;
  MovieScreen({this.movie});

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
              //color: Colors.pink,
              image: DecorationImage(
                image: AssetImage(
                  widget.movie.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                child: Container(
                  //color: Colors.orangeAccent.withOpacity(0.5),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Image.asset(
                        'assets/images/netflix_logo.png',
                        width: 100.0,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Icon(
                      Icons.arrow_right,
                      size: 50.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5.0,
                left: 20.0,
                child: IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              Positioned(
                bottom: 5.0,
                right: 20.0,
                child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
            ]),
          ),
          Container(
            width: double.infinity,
            //color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.movie.imageText,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    widget.movie.genre,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '⭐ ⭐ ⭐ ⭐',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Year',
                            style: TextStyle(color: Colors.black38),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            widget.movie.year,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Country',
                            style: TextStyle(color: Colors.black38),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            widget.movie.country,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Length',
                              style: TextStyle(color: Colors.black38)),
                          SizedBox(height: 5.0),
                          Text(
                            widget.movie.length,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    widget.movie.descr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            //color: Colors.black12,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Screenshots',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {}),
                ],
              ),
            ),
          ),
          Container(
            height: 170.0,
            //color: Colors.blue,
            padding: EdgeInsets.only(left: 20.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/spiderman.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 20.0,
                          spreadRadius: 5.0,
                          offset: Offset(10.0, 10.0),
                        ),
                      ]),
                  width: 230.0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
