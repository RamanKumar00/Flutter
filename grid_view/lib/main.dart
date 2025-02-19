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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  // ✅ Define arrColours as a final list inside MyHomePage
  final List<Color> arrColours = [
    Colors.amber,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Grid View'),
      ),
      body: GridView.count(
        crossAxisCount: 3, // 3 columns in the grid
        children: List.generate(widget.arrColours.length, (index) {
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: widget.arrColours[0],
            ),
          );
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: widget.arrColours[1],
            ),
          );
        }),
      ),
    );
  }
}
