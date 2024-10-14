import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the ProductPage',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
