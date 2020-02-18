import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix/model/categories_model.dart';

class CategoriesSelector extends StatefulWidget {
  @override
  _CategoriesSelectorState createState() => _CategoriesSelectorState();
}

class _CategoriesSelectorState extends State<CategoriesSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 30.0, bottom: 10.0),
      height: 85.0,
      //color: Colors.orange,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (BuildContext context, int index) {
          final label = labels[index];
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10.0),
                width: 180.0,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage(
                      label.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              Container(
                height: 85.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.red.withOpacity(0.3),
                        Colors.redAccent,
                      ]),
                ),
              ),
              Center(
                child: Text(
                  label.labels,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
