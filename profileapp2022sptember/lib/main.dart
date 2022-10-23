import 'package:flutter/material.dart';
import 'package:profileapp2022sptember/practice.dart';

void main() {
  runApp(SectionA());
  //runApp(SectionA());
}

class SectionA extends StatelessWidget {
  const SectionA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple,Colors.purple.shade100])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
          ),
          body: Column(
            //mainAxisAlignment: MainAxisAlignment,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                      Column(children: [
                        Text("Muhmmad Abdullah",style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),),
                        Text("Flutter App developer"),
                      ],),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(

                      leading: Icon(Icons.email),
                      title: Text('abdullahwale@gmail.com'),
                      subtitle: Text('I love app development'),
                      iconColor: Colors.purple,
                    ),

                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(

                      leading: Icon(Icons.email),
                      title: Text('abdullahwale@gmail.com'),
                      subtitle: Text('I love app development'),
                      iconColor: Colors.purple,
                    ),

                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(

                      leading: Icon(Icons.email),
                      title: Text('abdullahwale@gmail.com'),
                      subtitle: Text('I love app development'),
                      iconColor: Colors.purple,
                    ),

                  ],
                ),
              ),Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(

                      leading: Icon(Icons.email),
                      title: Text('abdullahwale@gmail.com'),
                      subtitle: Text('I love app development'),
                      iconColor: Colors.purple,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                    CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                    CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

 */

/*
Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                    Column(children: [
                      Text("Muhmmad Abdullah",style: TextStyle(
                      color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),),
                      Text("Flutter App developer"),
                    ],),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(

                    leading: Icon(Icons.email),
                    title: Text('abdullahwale@gmail.com'),
                    subtitle: Text('I love app development'),
                    iconColor: Colors.purple,
                  ),

                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(

                    leading: Icon(Icons.email),
                    title: Text('abdullahwale@gmail.com'),
                    subtitle: Text('I love app development'),
                    iconColor: Colors.purple,
                  ),

                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(

                    leading: Icon(Icons.email),
                    title: Text('abdullahwale@gmail.com'),
                    subtitle: Text('I love app development'),
                    iconColor: Colors.purple,
                  ),

                ],
              ),
            ),Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(

                    leading: Icon(Icons.email),
                    title: Text('abdullahwale@gmail.com'),
                    subtitle: Text('I love app development'),
                    iconColor: Colors.purple,
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                  CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                  CircleAvatar(backgroundImage: AssetImage("assets/fb.png"),),
                ],
              ),
            ),
          ],
        ),
      )
 */