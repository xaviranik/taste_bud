import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taste_bud/data/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.dashboard,
            color: Colors.grey[800],
          ),
          iconSize: 24,
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeContent: Text(
                  '${currentUser.cart.length}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
          )
        ],
        title: Text(
          'Taste Bud',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(width: 0.8, color: Colors.grey[200]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(width: 1.5, color: Colors.grey[800]),
                ),
                focusColor: Colors.cyan[200],
                hintText: 'Search Food or Restaurants...',
                prefixIcon: Icon(
                  Icons.search,
                  size: 24.0,
                  color: Colors.grey[400],
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.clear,
                    size: 18.0,
                    color: Colors.grey[400],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
