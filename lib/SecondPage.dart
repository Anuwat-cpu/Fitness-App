import 'package:flutter/material.dart';

import 'User.dart';

class SecondPage extends StatelessWidget {
  final User user;

  // Constructor to receive the User object
  SecondPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          'Name: ${user.name}\nAge: ${user.age}',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
