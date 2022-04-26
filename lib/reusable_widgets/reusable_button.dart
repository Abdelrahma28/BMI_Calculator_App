import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({required this.onPressed, required this.label});
  String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: kCalculateStyle,
            )
          ],
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0.h),
        padding: EdgeInsets.only(bottom: 20.0.h),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
