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
  void _decrementCounter(){
    setState(() {
      if(_counter>0){
        _counter--;
      }
    });
  }
  void _resetCounter(){
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('COUNTER MODEL'),
        centerTitle: true,

      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'COUNTER APP:',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 50,),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 70),
          FloatingActionButton(
              onPressed: _decrementCounter,
          tooltip: 'Decrement',
            backgroundColor: Colors.red,
          child: const Icon(Icons.remove),

          ),
          SizedBox(width: 70),
          FloatingActionButton(onPressed: _resetCounter,
            tooltip: 'Reset to 0',
            backgroundColor: Colors.blue,
            child: const Icon(Icons.refresh),
          ),
        ]
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
