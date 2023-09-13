// lib/screens/listings_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_chef_app/models/food_item.dart';
import 'package:my_food_chef_app/data/food_data.dart';
import 'package:my_food_chef_app/screens/details_screen.dart'; // Import your data handling class

class ListingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<FoodItem> foodItems = FoodData.fetchFoodItems(); // Fetch the list of food items

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Listings'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final FoodItem item = foodItems[index];
          return ListTile(
            leading: Image.network(item.imageUrl),
            title: Text(item.name),
            subtitle: Text(item.description,),
            trailing: Text('\$${item.price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(item: item)));
              // Implement navigation to the item's details screen
            },
          );
        },
      ),
    );
  }
}
