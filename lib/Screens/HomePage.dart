import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_recipee_app/Favourites.dart';
import 'package:flutter_recipee_app/NewRecipe.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // color: Colors.grey[300],
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              FlutterIcons.home_outline_mco,
              color: Colors.redAccent,
            ),
            FloatingActionButton(
              tooltip: 'Add', // used by assistive technologies
              child: Icon(Icons.add),
              onPressed: null,
            ),
            /*Icon(
              FlutterIcons.account_group_outline_mco,
            ),
            Icon(
              FlutterIcons.heart_outlined_ent,
            ),
            Icon(
              FlutterIcons.account_outline_mco,
            ),
            */
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    text: "New Recipes".toUpperCase(),
                  ),
                  Tab(
                    text: "Favourites".toUpperCase(),
                  ),
                  /*Tab(
                    text: "Categories".toUpperCase(),
                  ),*/
                ],
                labelColor: Colors.orange,
                indicator: DotIndicator(
                  color: Colors.deepOrangeAccent,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                unselectedLabelColor: Colors.deepOrange.withOpacity(0.3),
                labelStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    NewRecipe(),
                    Favourite(),
                    /* Container(
                      child: Center(
                        child: Text(
                          'Favourites',
                        ),
                      ),
                    ), */
                    /* Container(
                      child: Center(
                        child: Text(
                          'Categories',
                        ),
                      ),
                    ), */
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
