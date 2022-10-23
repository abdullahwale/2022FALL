import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WeightonEarth(),
    );
  }
}

class WeightonEarth extends StatefulWidget {
  const WeightonEarth({Key? key}) : super(key: key);

  @override
  State<WeightonEarth> createState() => _WeightonEarthState();
}

class _WeightonEarthState extends State<WeightonEarth> {
  final TextEditingController _weightController = new TextEditingController();
  bool checkboxValueA = true;
  bool checkboxValueB = false;
  bool checkboxValueC = false;
  int radioValue = 0;
  bool switchValue = false;
  double _finalResult = 0.0;
  String _planetName = " ";

  void handleRadioValueChanged(int value) {
    /*
Mercury: 0.38
Venus: 0.91
Earth: 1.00
Mars: 0.38
Jupiter: 2.34
Saturn: 1.06
Uranus: 0.92
Neptune: 1.19
Pluto: 0.06
     */
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _planetName =
              "Your weight on Pluto is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _planetName =
              "Your weight on Mars is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _planetName =
              "Your Venus on Pluto is ${_finalResult.toStringAsFixed(1)}";

          break;
        default:
          print("Nothing selected!");
      }

//      print("Value is ${radioValue.toString()}");
    });
  }
  double calculateWeight(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong!");
      return int.parse("180") * 0.38; // give a default weight! Be creative!
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculate Weight on other Planets"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 50,
              child: Icon(Icons.account_balance_sharp),
            ),
          ),
          SizedBox(
            child: Divider(),
          ),
          TextField(
            controller: _weightController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Your Weight on Earth',
                hintText: 'In pounds',
                icon: Icon(Icons.person_outline)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              RadioButton<int>(
                description: "Radio 01",
                value: 0,
                groupValue: radioValue,
                onChanged: (value) => setState(
                      () {
                        handleRadioValueChanged(0);
                      },
                ),
                activeColor: Colors.red,
              ),
              RadioButton<int>(
                description: "Radio 02",
                value: 1,
                groupValue: radioValue,
                onChanged: (value) => setState(
                      () {
                        handleRadioValueChanged(1);
                      },
                ),
                activeColor: Colors.red,
              ),
              RadioButton<int>(
                description: "Radio 03",
                value: 2,
                groupValue: radioValue,
                onChanged: (value) => setState(
                      () {
                        handleRadioValueChanged(2);
                      },
                ),
                activeColor: Colors.red,
              ),
            ],),
          ),
          Text(
            _weightController.text.isEmpty
                ? "Please enter weight"
                : _planetName + " lbs",
            style: TextStyle(
                color: Colors.black,
                fontSize: 19.4,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

