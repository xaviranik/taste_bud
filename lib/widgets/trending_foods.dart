import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taste_bud/data/data.dart';
import 'package:taste_bud/models/order.dart';

class TrendingFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Trending Foods'.toUpperCase(),
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Container(
          height: 140.0,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 8.0),
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext context, int index) {
                Order order = currentUser.orders[index];
                return _buildRecentOrders(context, order);
              }),
        ),
      ],
    );
  }

  Widget _buildRecentOrders(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 320.0,
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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(order.food.imageUrl),
                    width: 120.0,
                    height: 120.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          order.food.name,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          order.restaurant.name,
                          style: TextStyle(fontSize: 12.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          order.restaurant.address,
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
          Container(
            margin: EdgeInsets.only(right: 16.0),
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 16.0,
              color: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
