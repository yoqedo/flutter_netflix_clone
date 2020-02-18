import 'package:flutter/material.dart';
import 'package:netflix/widgets/categories_selector.dart';
import 'package:netflix/widgets/list_selector.dart';
import 'package:netflix/widgets/movies_selector.dart';
import 'package:netflix/widgets/popular_selector.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              padding: EdgeInsets.only(left: 30.0),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            title: Center(
              child: Image.asset(
                'assets/images/netflix_logo.png',
                width: 100.0,
              ),
            ),
            actions: <Widget>[
              IconButton(
                padding: EdgeInsets.only(right: 30.0),
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    MoviesSelector(),
                    CategoriesSelector(),
                    ListSelector(),
                    PopularSelector(),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.lightGreen,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.rss_feed,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
