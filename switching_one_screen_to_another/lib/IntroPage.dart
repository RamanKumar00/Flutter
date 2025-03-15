import 'package:flutter/material.dart';
import 'package:switching_one_screen_to_another/main.dart';

class Intropage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: '',)),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}