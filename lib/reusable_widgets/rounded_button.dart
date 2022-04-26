import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundIconButton({required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 8.0,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0.w, height: 56.0.h),
      onPressed: onPressed,
    );
  }
}
