import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
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
    );
  }
}