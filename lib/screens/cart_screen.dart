// lib/screens/cart_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_chef_app/models/food_item.dart'; // Import your model class for food items
import 'package:my_food_chef_app/data/cart_data.dart'; // Import your data handling class for the cart

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<FoodItem> cartItems = CartData.fetchCartItems(); // Fetch the user's cart items

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final FoodItem item = cartItems[index];
          return ListTile(
            leading: Image.network(item.imageUrl),
            title: Text(item.name),
            subtitle: Text(item.description),
            trailing: Text('\$${item.price.toStringAsFixed(2)}'),
            // Implement logic to allow users to modify or remove items from the cart
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Total: \$XX.XX'), // Implement logic to calculate the total price
              ElevatedButton(
                onPressed: () {
                  // Implement logic to proceed to the checkout screen
                },
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
