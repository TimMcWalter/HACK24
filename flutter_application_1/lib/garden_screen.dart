import 'package:flutter/material.dart';

class GardenScreen extends StatelessWidget {
  const  GardenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garden'),
      ),
      body: Center(
        child: Text(
          'Garden Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
