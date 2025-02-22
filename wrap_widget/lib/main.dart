import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView( // Allows scrolling if needed
        child: Wrap( 
          direction: Axis.vertical,
          spacing: 11,// Stacks containers vertically
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            Container(width: 100, height: 100, color: Colors.amber),
            Container(width: 100, height: 100, color: Colors.brown),
            Container(width: 100, height: 100, color: Colors.black),
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.yellow),
            Container(width: 100, height: 100, color: Colors.blueAccent),
            Container(width: 100, height: 100, color: Colors.purple),
            Container(width: 100, height: 100, color: Colors.grey),
            Container(width: 100, height: 100, color: Colors.pink),
          ],
        ),
      ),
    );
  }
}
