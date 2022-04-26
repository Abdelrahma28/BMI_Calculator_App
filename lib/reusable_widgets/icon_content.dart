import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          size: kBottomContainerHeight,
        ),
        SizedBox(height: 15.0.h),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
