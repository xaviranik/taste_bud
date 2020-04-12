import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taste_bud/data/data.dart';
import 'package:taste_bud/widgets/nearby_restaurants.dart';
import 'package:taste_bud/widgets/trending_orders.dart';
import 'package:taste_bud/widgets/search_bar.dart';

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
            Icons.menu,
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
                badgeColor: Theme.of(context).primaryColor,
                badgeContent: Text(
                  '${currentUser.cart.length}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                child: Icon(
                  Icons.shopping_basket,
                  size: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
          )
        ],
        title: Text(
          'Taste Bud',
          style: TextStyle(color: Colors.grey[800]),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SearchBar(),
          TrendingOrders(),
          NearbyRestaurants(),
        ],
      ),
    );
  }
}
