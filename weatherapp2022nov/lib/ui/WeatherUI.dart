import 'package:flutter/material.dart';

class WeatherUI extends StatelessWidget {
  const WeatherUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Positioned.fill(
            //   child: Image(
            //     image: AssetImage("images/umbrella.png"),
            //   ),
            // ),
            Image(
              image: AssetImage('images/umbrella.png'),
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
