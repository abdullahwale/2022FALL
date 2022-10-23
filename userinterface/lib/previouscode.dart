import 'package:flutter/material.dart';

void main() {
  runApp(Desiging());
}

class Desiging extends StatelessWidget {
  const Desiging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blueAccent,Colors.black])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/my.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Muhammad Abdullah',
                        style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Flutter App development'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Card(

                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.pink,
                //mainAxisSize: MainAxisSize.min,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('The Enchanted Nightingale'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  iconColor: Colors.amber,
                ),
              ),
              Card(

                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.blue,
                //mainAxisSize: MainAxisSize.min,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('The Enchanted Nightingale'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  iconColor: Colors.amber,
                ),
              ),
              Card(

                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.green,
                //mainAxisSize: MainAxisSize.min,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('The Enchanted Nightingale'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  iconColor: Colors.amber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/fb.png'),
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/fb.png'),
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/fb.png'),
                      radius: 30,
                    ),
                  ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/my.png'),
                  radius: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Muhammad Abdullah',
                      style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Flutter App development'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Card(

              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.pink,
              //mainAxisSize: MainAxisSize.min,
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                iconColor: Colors.amber,
              ),
            ),
            Card(

              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.blue,
              //mainAxisSize: MainAxisSize.min,
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                iconColor: Colors.amber,
              ),
            ),
            Card(

              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.green,
              //mainAxisSize: MainAxisSize.min,
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                iconColor: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/fb.png'),
                  radius: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/fb.png'),
                  radius: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/fb.png'),
                  radius: 30,
                ),
              ],),
            ),
          ],
        ),
      )
 */


/*
Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
 */