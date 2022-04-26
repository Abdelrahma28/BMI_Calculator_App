import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: const Color(0xFF0A0E21), secondary: Colors.purple),
        ),
        home: InputPage(),
      ),
      designSize: const Size(393, 835),
    );
  }
}
