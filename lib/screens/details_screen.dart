// lib/screens/details_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_chef_app/models/food_item.dart';

class DetailsScreen extends StatelessWidget {
  final FoodItem item;

  DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodChef - Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(item.imageUrl),
            SizedBox(height: 16.0),
            Text(item.name, style: TextStyle(fontSize: 24.0)),
            SizedBox(height: 8.0),
            Text(item.description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),
            Text('\$${item.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
