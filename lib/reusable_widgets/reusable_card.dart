import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard(
      {required this.colour, required this.cardChild, this.onPressed});
  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 15.0.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
