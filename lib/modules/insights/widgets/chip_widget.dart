import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color labelColor;
  final Color borderColor;

  const ChipWidget({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.labelColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: backgroundColor,
      labelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: labelColor,
      ),
      side: BorderSide(color: borderColor, width: 1),
    );
  }
}
