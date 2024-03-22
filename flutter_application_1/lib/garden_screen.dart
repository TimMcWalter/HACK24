import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class GardenScreen extends StatelessWidget {
  const GardenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/garden_smalltree.png', // Change the image name here
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
           child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WaterScreen()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent, // Transparent color
                  ),
                  child: Center(
                    child: Text(
                      '.', // Text here
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.transparent, // Transparent text color
                      ),
                    ),
                  ),
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}

class WaterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/garden_water.png', // Change the image name here
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FoodScreen()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent, // Transparent color
                  ),
                  child: Center(
                    child: Text(
                      '.', // Text here
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.transparent, // Transparent text color
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/garden_food.png', // Change the image name here
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BigtreeScreen()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent, // Transparent color
                  ),
                  child: Center(
                    child: Text(
                      '.', // Text here
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.transparent, // Transparent text color
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BigtreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/garden_bigtree.png', // Change the image name here
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent, // Transparent color
                  ),
                  child: Center(
                    child: Text(
                      '.', // Text here
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.transparent, // Transparent text color
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
