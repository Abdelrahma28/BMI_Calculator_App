import 'package:bmi_calculater/reusable_widgets/reusable_button.dart';
import 'package:bmi_calculater/reusable_widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.result, required this.bmi, required this.interpretation});
  final String result;
  final String bmi;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin:
                  EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h),
              child: Text(
                'Your Result',
                style: kValueTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              colour: kActiveColor,
            ),
          ),
          CalculateButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
