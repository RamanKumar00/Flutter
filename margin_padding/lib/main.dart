import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Correct build method signature
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("MarginAndPadding"),
      ),
      body:Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue, // Correct usage of Colors class
            borderRadius: BorderRadius.circular(7),
          ),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(top: 10,left:10),
          child: Text(
            "Hello", // Optional text for the Center widget
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}
