// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_chef_app/models/food_item.dart';
import 'package:my_food_chef_app/data/food_data.dart';
import 'package:my_food_chef_app/screens/details_screen.dart'; // Import the Details Screen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodItems = FoodData.fetchFoodItems();

    return Scaffold(
      appBar: AppBar(
        title: Text('FoodChef - Home'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final item = foodItems[index];
          return ListTile(
            leading: Image.network(item.imageUrl),
            title: Text(item.name),
            subtitle: Text(item.description),
            trailing: Text('\$${item.price.toStringAsFixed(2)}'),
            onTap: () {
              // Navigate to the Details Screen when an item is tapped
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(item: item), // Pass the selected item
                ),
              );
            },
          );
        },
      ),
    );
  }
}
