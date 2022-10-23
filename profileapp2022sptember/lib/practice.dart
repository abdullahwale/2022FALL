import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatefulWidget {
  const MyProfileApp({Key? key}) : super(key: key);

  @override
  State<MyProfileApp> createState() => _MyProfileAppState();
}

class _MyProfileAppState extends State<MyProfileApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color(0xFF26CBE6),
                    const Color(0xFF26CBC0),
                  ], begin: Alignment.topCenter, end: Alignment.center)),
            ),
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.greenAccent,
              ),
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile_img.png'),
                        radius: 50,
                      ),
                      Spacer(),
                      //SizedBox(width: 30,),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name: Muhammad Abdullah',
                          ),
                          Text(
                            'Skills: Developer and Freelancer',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                  Expanded(child:
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFF26AAAA),
                        const Color(0xFF200000),
                      ]),),
                    child: Column(children: [
                      Card(
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.phone,
                              color: Colors.teal,
                            ),
                            title: Text(
                              '+923046983794',
                              style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                          )),
                      Card(
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.email,
                              color: Colors.teal,
                            ),
                            title: Text(
                              'abdullahwale@gmail.com',
                              style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                          )),
                      Card(
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.web,
                              color: Colors.teal,
                            ),
                            title: Text(
                              'www.pakacademy79.com',
                              style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                          )),

                    ],),
                  ),),
                  Expanded(child:Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFF200000),
                        const Color(0xFF26AAAA),

                      ]),),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.confirmation_num_sharp,size: 30,),
                        Icon(Icons.confirmation_num_sharp,size: 30),
                        Icon(Icons.confirmation_num_sharp,size: 30,),
                      ],),)),
                ],
              ),
              //body: ,
            ),
          ],
        ),
      ),
    );
  }
}
