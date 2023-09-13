// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_chef_app/models/user.dart'; // Import your user model class

class ProfileScreen extends StatelessWidget {
  final User user; // Pass the user data to the profile screen

  ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: ${user.name}'),
            Text('Email: ${user.email}'),
            Text('Location: ${user.location}'),
            // Add more user profile information as needed
          ],
        ),
      ),
    );
  }
}
