import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;

  RatingStars({Key key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String stars = '';
    for(int i=0; i<rating; i++) {
      stars += '⭐';
    }
    stars.trim();
    return Text(stars, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18.0),);
  }
}
