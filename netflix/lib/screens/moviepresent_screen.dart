import 'package:flutter/material.dart';
import 'package:netflix/model/movie_model.dart';


class MoviePresent extends StatefulWidget {
  final MovieImg movie;
  MoviePresent({this.movie});
 

  @override
  _MoviePresentState createState() => _MoviePresentState();
}

class _MoviePresentState extends State<MoviePresent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
            ),
            child: Image(
              image: AssetImage(
                widget.movie.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
