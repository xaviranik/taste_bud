import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taste_bud/data/data.dart';
import 'package:taste_bud/models/restaurant.dart';
import 'package:taste_bud/widgets/rating_stars.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantScreen({Key key, this.restaurant}) : super(key: key);
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 220.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 24.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      color: Theme.of(context).primaryColor,
                      iconSize: 24.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            widget.restaurant.name,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Chip(
                          backgroundColor: Colors.green[400],
                          label: Text(
                            'OPEN',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0,),
                    RatingStars(rating: widget.restaurant.rating,),
                    SizedBox(height: 16.0,),
                    Text(
                      widget.restaurant.address,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600]
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600]
                      ),
                    ),
                    SizedBox(height: 16.0,),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0,),
                        FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Customer Service',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

