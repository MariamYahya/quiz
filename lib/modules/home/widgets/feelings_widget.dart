import 'package:flutter/material.dart';

class FeelingsWidget extends StatelessWidget {
  final String imagePath;
  final String feelingTitle;

  const FeelingsWidget({
    super.key,
    required this.imagePath,
    required this.feelingTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(imagePath),
          width: 60,
          height: 60,
        ),
        SizedBox(height: 5),
        Text(
          feelingTitle,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
