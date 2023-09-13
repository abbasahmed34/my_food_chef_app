// lib/main.dart

import 'package:flutter/material.dart';
import 'package:my_food_chef_app/screens/listings_screen.dart';
import 'package:my_food_chef_app/screens/cart_screen.dart';
import 'package:my_food_chef_app/screens/profile_screen.dart';
import 'package:my_food_chef_app/models/user.dart';
import 'package:my_food_chef_app/screens/discover_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodChef App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Index of the currently selected tab
  final List<Widget> _screens = [
    DiscoverScreen(),
    ListingsScreen(),
    CartScreen(),
    ProfileScreen(
      user: User(
        name: 'Abbas Ahmed', // Replace with the user's name
        email: 'abbasahmed600@gmail.com', // Replace with the user's email
        location: 'Mansehra, Pakistan', // Replace with the user's location
      ),
    ),
    // Add more screens here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodChef App'),
        centerTitle: true,
      ),
      body: _screens[_currentIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _currentIndex, // Current index for the selected tab
        onTap: (int index) {
          setState(() {
            _currentIndex =
                index; // Update the current index when a tab is tapped
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.explore), // Use an appropriate icon
            label: 'Discover', // Update label to "Discover"
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.list),
            label: 'Listings',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
           // Change the background color
          // Add more tabs for additional screens
        ],
      ),
    );
  }
}
