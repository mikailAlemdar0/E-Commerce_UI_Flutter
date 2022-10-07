import 'package:flutter/material.dart';

class MyProducts extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  final color;

  const MyProducts({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
