import 'package:flutter/material.dart';

void main() {
  runApp(SwapApp());
}

class SwapApp extends StatefulWidget {
  const SwapApp({Key? key}) : super(key: key);

  @override
  State<SwapApp> createState() => _SwapAppState();
}

class _SwapAppState extends State<SwapApp> {
  int num=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GestureDetector(
              onTap: (){
                setState(() {
                  if(num==1)
                    num=2;
                  else if(num==2)
                    num=3;
                  else if (num==3)
                    num=4;
                  else if(num==4)
                    num=5;
                  else
                    num=1;
                });
                print(num);

              }, child: Image.asset("images/S/$num.png")),
        ),
      ),
    );
  }
}
