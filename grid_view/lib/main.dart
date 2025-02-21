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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  var arrColours = [Colors.amber,
  Colors.orange,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.green
  ];
}

class _MyHomePageState extends State<MyHomePage> {
  
  get arrColours => null;


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Grid View'),
      ),
      body:GridView.count(crossAxisCount: 3,
      children: [
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[0],),
        ),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[1],),
        ),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[3],),
        ),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[4],),
        ),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[5],),
        ),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[6],),
        ),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Container(color:arrColours[2],),
        )
      ],
      )
    );
  }
}