import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'onePage.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

String apiID = "2940ffdae8419f4684eac9377184ab6a";
String city = "Vehari";
String? temprature;

Future<Map> showStuff() async {
  Map data = await getWeather(apiID, city);
  temprature = data['main']['temp'].toString();
  String? apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid='
      '${apiID}&units=imperial';
  http.Response? response = await http.get(Uri.parse(apiUrl));
  print(data['main']['temp'].toString());
  return json.decode(response.body);
}

String? data;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("One Screen Weather App"),
        ),
        body: WeatherApp(),
      ),
    );
  }
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              // setState(() {
              //   Map content= showStuff() as Map;
              //    data=content.toString();
              // });
            },
            child: Text("click")),
      ],
    );
  }
}

Future<Map> getWeather(String appId, String city) async {
  //String temp="https://samples.openweathermap.org/data/2.5/forecast?id=524901&appid=b1b15e88fa797225412429c1c50c122a1&units=imperial";
  String? apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid='
      '${apiID}&units=imperial';
  http.Response? response = await http.get(Uri.parse(apiUrl));

  return json.decode(response.body);
}
