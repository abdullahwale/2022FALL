import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _angle = 0.0;
  //Matrix4 matrix = Matrix4.rotationX(3.14 / 4);
  void _incrementCounter() {
    _startAnimation();
    setState(() {

      _counter++;
    });
  }
  void _startAnimation() {
    // Update the angle over time to create animation
    setState(() {
      _angle = _angle + 3.14 / 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.rotationX(_angle),
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
            ),
            // Container(
            //   color: Colors.black,
            //   child: Transform(
            //     alignment: Alignment.topRight,
            //     transform: Matrix4.skewY(0.3)..rotateZ(3.14 / 12.0),
            //     child: Container(
            //       padding: const EdgeInsets.all(8.0),
            //       color: const Color(0xFFE8581C),
            //       child: const Text('Apartment for rent!'),
            //     ),
            //   ),
            // ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
