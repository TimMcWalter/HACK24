import 'package:flutter/material.dart';
import 'profile.dart';
import 'settings_screen.dart';

import 'chat_screen.dart';
import 'morning_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to SettingsScreen
              // This is a placeholder, replace SettingsScreen with your actual screen name
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
          IconButton(
            icon: Image.asset('assets/avatar1.png'),
            onPressed: () {
              // Navigate to ProfileScreen
              // Ensure you've imported profile.dart and defined ProfileScreen properly
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        height: 60, // Adjust the height as needed
        color: Colors.black.withOpacity(0.5), // Black color with 50% opacity
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.chat_bubble, color: Colors.white),

               onPressed: () {
              // Navigate to SettingsScreen
              // This is a placeholder, replace SettingsScreen with your actual screen name
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadingScreen ()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.battery_2_bar_outlined, color: Colors.white),
              onPressed: () {
                // Navigate to Notifications Screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
