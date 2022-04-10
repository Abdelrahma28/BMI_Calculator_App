import 'package:flutter/material.dart';

const genderTextColor = Color(0xFF8D8E98);
const labelTextStyle = TextStyle(fontSize: 18.0, color: genderTextColor);
const iconSize = 80.0;

class GenderWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  GenderWidget({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(height: 15.0),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
