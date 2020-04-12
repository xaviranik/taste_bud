import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taste_bud/data/data.dart';
import 'package:taste_bud/models/restaurant.dart';
import 'package:taste_bud/screens/restaurant_screen.dart';
import 'package:taste_bud/widgets/rating_stars.dart';

class NearbyRestaurants extends StatefulWidget {
  @override
  _NearbyRestaurantsState createState() => _NearbyRestaurantsState();
}

class _NearbyRestaurantsState extends State<NearbyRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Text(
            'Nearby Restaurants'.toUpperCase(),
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        _buildRestaurants(),
      ],
    );
  }

  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return RestaurantScreen(restaurant: restaurant);
          }));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                offset: Offset(1.0, 1.5), //(x,y)
                blurRadius: 3.0,
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Hero(
                  tag: restaurant.imageUrl,
                  child: Image(
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: 150.0,
                    image: AssetImage(restaurant.imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        restaurant.name,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      RatingStars(
                        rating: restaurant.rating,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        restaurant.address,
                        style: TextStyle(fontSize: 12.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '0.2 miles away',
                        style: TextStyle(fontSize: 12.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    });
    return Column(
      children: restaurantList,
    );
  }
}
