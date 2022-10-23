import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

void main() {
  runApp(DiceAppSecAB18());
}

class DiceAppSecAB18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice App 2022"),
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int num = 1;
  int num2=1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: Image(
                  image: AssetImage("images/dice$num.png"),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                num = random.nextInt(6)+1;
              });
              print(num);
            },
          ),
        ),
        Expanded(
          child: TextButton(
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: Image(
                  image: AssetImage("images/dice$num2.png"),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                num2 = random.nextInt(6)+1;
              });
              print(num2);
            },
          ),
        ),
      ],
    );
  }
}

/*
         if(num==1)
            num=2;
          else if (num==2)
            num=3;
          else if (num==3)
            num=4;
          else if (num==4)
            num=5;
          else if (num==5)
            num=6;
          else
            num=1;
 */

/*
Container(
          color: Colors.greenAccent,
          child: Center(
            child: Image(
              image: AssetImage("images/dice1.png"),
            ),
          ),
        )
 */
