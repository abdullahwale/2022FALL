import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DicePage(title: 'Dice App'),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key ?key, this.title}) : super(key: key);
  final String ?title;

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  void _rollDice() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black, // Text Color
                  ),
                  onPressed: _rollDice,
                  child: Image.asset('images/dice$_leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: _rollDice,
                  child: Image.asset('images/dice$_rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}