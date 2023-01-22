import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var random = new Random();
  var diceface = 1 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset('images/dice$diceface.png'),
              ),
              Expanded(
                flex: 1,
                  child:
                      ElevatedButton(onPressed: (){
                        setState(() {
                          diceface = random.nextInt(6)+1;
                          print(diceface);
                        });
                      }, child: Text("Roll Dice"))),
            ],
          ),
        ),
      ),
    );
  }
}
