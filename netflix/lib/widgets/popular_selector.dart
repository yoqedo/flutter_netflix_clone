import 'package:flutter/material.dart';
import 'package:netflix/model/popular_model.dart';

class PopularSelector extends StatefulWidget {
  @override
  _PopularSelectorState createState() => _PopularSelectorState();
}

class _PopularSelectorState extends State<PopularSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //color: Colors.lightBlue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Popular on Netflix',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 30.0, bottom: 10.0),
          //color: Colors.black54,
          height: 220.0,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: populars.length,
            itemBuilder: (BuildContext context, int index) {
              final popular = populars[index];
              return Container(
                margin: EdgeInsets.only(right: 10.0),
                width: 160.0,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 8.0,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image(
                    image: AssetImage(
                      popular.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
