import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String title;
  const TabWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF363F72),
      ),
    );
  }
}
