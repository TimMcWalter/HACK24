import 'package:flutter/material.dart';

class TokensScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tokens'),
      ),
      body: Center(
        child: Image.asset(
          'assets/tokens.png', // Image path here
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
