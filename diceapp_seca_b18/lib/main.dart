import 'package:flutter/material.dart';
import 'dart:math';
Random random= new Random();

void main() {
  runApp(MyApp());
}
//Statless Widgets
class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice App"),
        ),
        body: Dice(),
      ),
    );
  }
}


//Statfull Widgets
class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}
class _DiceState extends State<Dice> {

  int num=1;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                //Call Back Function, Anonymous Function,Nameless Funtion
                setState(() {
                  num= random.nextInt(6)+1;
                });
                print(num);
              },
              child: Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Image(
                    image: AssetImage("images/dice$num.png"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                //Call Back Function, Anonymous Function,Nameless Funtion
                setState(() {
                  num= random.nextInt(6)+1;
                });
                print(num);
              },
              child: Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Image(
                    image: AssetImage("images/dice$num.png"),
                  ),
                ),
              ),
            ),
          )
        ],),
      ),
      Expanded(
        child: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                //Call Back Function, Anonymous Function,Nameless Funtion
                setState(() {
                  num= random.nextInt(6)+1;
                });
                print(num);
              },
              child: Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Image(
                    image: AssetImage("images/dice$num.png"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                //Call Back Function, Anonymous Function,Nameless Funtion
                setState(() {
                  num= random.nextInt(6)+1;
                });
                print(num);
              },
              child: Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Image(
                    image: AssetImage("images/dice$num.png"),
                  ),
                ),
              ),
            ),
          )
        ],),
      )
    ],);
  }
}

/*
 // if (num == 1)
          //   num = 2;
          // else if (num == 2)
          //   num=3;
          // else if (num == 3)
          //   num=4;
          // else if (num == 4)
          //   num=5;
          // else if (num==5)
          //   num=6;
          // else
          //   num=1;
 */
// void fun(){
//   print("Clicked");
// }