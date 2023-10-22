import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {

  final String title;
  final String buttonTitle;
  final Color color;
  const CustomRowWidget({super.key, required this.title, required this.buttonTitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                buttonTitle,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              Icon(
                Icons.navigate_next_rounded,
                color: color,
              )
            ],
          ),
        ),
      ],
    );
  }
}
