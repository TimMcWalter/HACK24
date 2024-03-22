import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
              'assets/chatScreen.png', // Change the image name here
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
      MaterialPageRoute(builder: (context) => AIchatScreen()),
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

class AIchatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Image.asset(
          'assets/chat_vc.png', // Change the image name here
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
