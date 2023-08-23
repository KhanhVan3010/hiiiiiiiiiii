import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'COUNTER APP'
            ),
            ),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
             '$_counter',
             style: TextStyle(fontSize: 160, fontWeight: FontWeight.bold), 
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 20,
              ),
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    child: Icon(Icons.remove),
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    child: Icon(Icons.add),
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}


  