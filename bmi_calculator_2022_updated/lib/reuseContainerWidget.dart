import 'package:flutter/material.dart';
import 'constantFile.dart';

class iconColumn extends StatelessWidget {
  iconColumn({required this.icon, this.label});
  final IconData? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label.toString(),
          style: kLabelStyle,
        ),
      ],
    );
  }
}
