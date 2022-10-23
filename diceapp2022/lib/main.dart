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
  Random random = new Random();
  int num=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(num.toString()),
        ),
        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                SizedBox(width: 150,),
                Text(num.toString(),style: TextStyle(fontSize: 50),),
                SizedBox(width: 200,),
                Text(num.toString(),style: TextStyle(fontSize: 50),),
              ],
            ),),
            Expanded(child: Row(
              children: [

                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      num=random.nextInt(6)+1;  //0+1=1,5+1=6
                      //Ternary Operator
                      //(num==1)?num=2:num=1;
                      // if(num==1)
                      // num=2;
                      // else
                      //   num=1;
                    });
//            print(num);
                  },//nameless or anonymous
                  child: Center(
                    child: Image.asset("images/d$num.png"),
                  ),
                ),),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      num=random.nextInt(6)+1;  //0+1=1,5+1=6
                      //Ternary Operator
                      //(num==1)?num=2:num=1;
                      // if(num==1)
                      // num=2;
                      // else
                      //   num=1;
                    });
//            print(num);
                  },//nameless or anonymous
                  child: Center(
                    child: Image.asset("images/d$num.png"),
                  ),
                ),),
              ],
            ),),
            SizedBox(height: 20,child: Divider(height: 10),),
            Expanded(child: Row(
              children: [
                SizedBox(width: 150,),
                Text(num.toString(),style: TextStyle(fontSize: 50),),
                SizedBox(width: 200,),
                Text(num.toString(),style: TextStyle(fontSize: 50),),
              ],
            ),),
            Expanded(child: Row(
              children: [

                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      num=random.nextInt(6)+1;  //0+1=1,5+1=6
                      //Ternary Operator
                      //(num==1)?num=2:num=1;
                      // if(num==1)
                      // num=2;
                      // else
                      //   num=1;
                    });
//            print(num);
                  },//nameless or anonymous
                  child: Center(
                    child: Image.asset("images/d$num.png"),
                  ),
                ),),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      num=random.nextInt(6)+1;  //0+1=1,5+1=6
                      //Ternary Operator
                      //(num==1)?num=2:num=1;
                      // if(num==1)
                      // num=2;
                      // else
                      //   num=1;
                    });
//            print(num);
                  },//nameless or anonymous
                  child: Center(
                    child: Image.asset("images/d$num.png"),
                  ),
                ),),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}


