import 'package:flutter/material.dart';
import 'package:flutter_style_and_theme/ui_helper/util.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Style and Theme"),
      ),
      body: Column(
        children: [
          Text("Text1", style: Theme.of(context).textTheme.headlineLarge!.copyWith(color:Colors.blue)),
          Text("Text2", style: Theme.of(context).textTheme.titleMedium),
          Text(
            "Text3",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            "Text4",
            style: mTextstyle11(),
          ),
        ],
      ),
    );
  }
}
