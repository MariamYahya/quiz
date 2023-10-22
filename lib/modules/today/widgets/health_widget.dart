import 'package:flutter/material.dart';

class HealthWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String healthTitle;
  final String healthTitle2;

  const HealthWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.healthTitle,
    required this.healthTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(imagePath),
              SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                healthTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 3),
              Text(
                healthTitle2,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
