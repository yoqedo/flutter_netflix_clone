import 'package:flutter/material.dart';
import 'package:netflix/model/list_model.dart';

class ListSelector extends StatefulWidget {
  @override
  _ListSelectorState createState() => _ListSelectorState();
}

class _ListSelectorState extends State<ListSelector> {
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
                Text('My List',
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
          color: Colors.white,
          height: 230.0,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: lists.length,
            itemBuilder: (BuildContext context, int index) {
              final mylist = lists[index];
              return Container(
                margin: EdgeInsets.only(right: 10.0),
                width: 160.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image(
                    image: AssetImage(
                      mylist.imageUrl,
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
