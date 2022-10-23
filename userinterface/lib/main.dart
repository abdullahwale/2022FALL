import 'package:flutter/material.dart';

void main() {
  runApp(MAD_SecA());
}

class MAD_SecA extends StatelessWidget {
  const MAD_SecA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Card"),
          centerTitle: true,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/my.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Abdullah",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      Text("Flutter App Development Course"),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Divider(
                color: Colors.purple,
              ),
              width: 400,
            ),
            Card(
              color: Colors.greenAccent,
                child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.purple,
              ),
                  title: Text("Personal Email ID"),
                  subtitle: Text("abdullahwale@gmail.com"),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/my.png"),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/my.png"),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/my.png"),
                ),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

/*
 // Container(
            //   color: Colors.green,
            //   child: Text("Abdullah",style: TextStyle(fontSize: 50),),
            // ),
            // Container(
            //   color: Colors.green,
            //   child: Text("Abdullah",style: TextStyle(fontSize: 50),),
            // ),
            // Container(
            //   color: Colors.green,
            //   child: Text("Abdullah",style: TextStyle(fontSize: 50),),
            // ),
            // Container(
            //   color: Colors.green,
            //   child: Text("Abdullah",style: TextStyle(fontSize: 50),),
            // ),
 */
