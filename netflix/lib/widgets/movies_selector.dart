import 'package:flutter/material.dart';
import 'package:netflix/model/movie_model.dart';
import 'package:netflix/screens/moviepresent_screen.dart';

class MoviesSelector extends StatefulWidget {
  @override
  _MoviesSelectorState createState() => _MoviesSelectorState();
}

class _MoviesSelectorState extends State<MoviesSelector> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _movieSelector(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MoviePresent()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              //width: 200.0,
              decoration: BoxDecoration(
                //color: Colors.lime,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Hero(
                  tag: movies[index].imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image(
                      image: AssetImage(
                        movies[index].imageUrl,
                      ),
                      fit: BoxFit.cover,
                      height: 220.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30.0,
            bottom: 40.0,
            child: Container(
              width: 250.0,
              child: Text(
                movies[index].imageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
      height: 280.0,
      child: PageView.builder(
        controller: pageController,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return _movieSelector(index);
        },
      ),
    );
  }
}
