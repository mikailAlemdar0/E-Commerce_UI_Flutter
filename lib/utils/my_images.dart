import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  final String iconImagePath;
  final color;

  const MyImages({
    Key? key,
    required this.iconImagePath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 100,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Image.asset(
                  iconImagePath,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
