import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
          title: Text('InkWell Widget'),
        ),
        body: Center(
            child: InkWell(
          onTap: () {
            print('tapped on container');
          },
          onDoubleTap: () {
            print('double tap on container');
          },
          onLongPress: () {
            print('long pressed on container');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(
              child: InkWell(
                onTap: () {
                  print('click on text');
                },
                child: Text(
                  'Click me',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        )));
        
  }
}
