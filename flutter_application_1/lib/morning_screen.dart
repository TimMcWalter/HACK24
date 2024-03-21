import 'package:flutter/material.dart';

class MorningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2, // Emojis take up 2/6 of the available space
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '😢 😔 😐 😊 😄', // Emojis representing different emotions
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2, // Sleep bar and text take up 2/6 of the available space
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sleep in 7h',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7, // 70% of screen width
                        height: 10,
                        color: Colors.grey[300],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * (7 / 12) * 0.7, // Fill the bar till 7h out of 12h and 70% of screen width
                        height: 10,
                        color: Colors.blue,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('0h'),
                          Text('12h'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2, // Random paragraph takes up 2/6 of the available space
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Random Paragraph',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet...',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
