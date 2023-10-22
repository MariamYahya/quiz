import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String imagePath;

  const CardsWidget(
      {super.key,
      required this.color,
      required this.title,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 151,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 24, height: 24),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
