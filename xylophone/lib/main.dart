import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}
final assetsAudioPlayer = AssetsAudioPlayer();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purpleAccent,
                backgroundColor: Colors.black// Text Color
              ),
              onPressed: (){
                assetsAudioPlayer.open(Audio("assets/1.mp3"));
              },
              child: Text("Just Click"),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.purpleAccent,
                  backgroundColor: Colors.green// Text Color
              ),
              onPressed: (){assetsAudioPlayer.open(Audio("assets/1.mp3"));},
              child: Text("Just Click"),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.purpleAccent,
                  backgroundColor: Colors.blueAccent// Text Color
              ),
              onPressed: (){assetsAudioPlayer.open(Audio("assets/1.mp3"));},
              child: Text("Just Click"),
            ),
          ),

        ],
      ),
    );
  }
}
