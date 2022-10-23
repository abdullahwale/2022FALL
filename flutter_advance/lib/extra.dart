import 'package:flutter/material.dart';
double val=1.0;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Opacity"),
        ),
        body: Column(children: [
          Opacity(opacity: val,child: MyClass(),),

        ],),
      ),
    );
  }
}


class MyClass extends StatefulWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      setState(() {
        val=0.0;
      });
    }, child: Text("Abdullah"));
  }
}

