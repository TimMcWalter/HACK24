import 'package:flutter/material.dart';

class MorningScreen extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Image.asset(
          'assets/morning_page.png', // Change the image name here
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
