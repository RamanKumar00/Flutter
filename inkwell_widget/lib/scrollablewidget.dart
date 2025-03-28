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
        title: Text('Scrollable Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, 
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.amber,
                    ),
                     Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.black,
                    ),
                     Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                    ),
                     Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.orange,
                    ),
                     Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 200,
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 200,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 200,
              color: Colors.white,
            ),
             Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 200,
              color: Colors.red,
            ),
             Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
