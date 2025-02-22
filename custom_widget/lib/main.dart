import 'package:custom_widget/Widgets/rounded_btn.dart';
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: RoundedButton(
                  btnName: 'login',
                  icon: Icon(Icons.lock),
                  callBack: () {
                    print('Logged in!!');
                  },
                  textStyle:TextStyle(fontSize: 16),
                ),
              ),
              Container(height:20),
               Container(
                width: 150,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  callBack: () {
                    print('Playing!!');
                  },
                  bgColour: Colors.orange,
                  textStyle:TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}
