import 'package:flutter/material.dart';

double val = 1.0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//OPacity Widget is just Work in Statless Widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Opacity App"),
        ),
        body: Column(

          children: [
            Opacity(
              opacity: val,
              child: MyText(),
            )
          ],
        ),
      ),
    );
  }
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: TextButton(
          onPressed: () {
            //this method just worked in Statfullwidget
            setState(() {
              val = 0.0;
            });
          },
          child: Text("Tips by Abdullah")),
    );
  }
}
