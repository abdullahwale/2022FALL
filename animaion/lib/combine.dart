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

  double _angle = 0.0;
  double _scale = 1.0;
  double _xTranslation = 0.0;
  double _yTranslation = 0.0;
  void _startAnimation() {
    setState(() {
      _angle = _angle + 0.1;
      _scale = _scale + 0.1;
      _xTranslation = _xTranslation + 10.0;
      _yTranslation = _yTranslation + 10.0;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Transform(
          transform: Matrix4.rotationX(_angle)
            ..scale(_scale)
            ..translate(_xTranslation, _yTranslation),
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
