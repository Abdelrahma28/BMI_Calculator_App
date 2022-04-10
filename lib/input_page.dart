import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender { male, female, empty }
const bottomContainerHeight = 80.0;

const bottomContainerColor = Color(0xFFEB1555);
const activeColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xff111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.empty;

  // Color male = inActiveColor;
  // Color female = inActiveColor;
  // void update(Gender selected) {
  //   if (selected == Gender.male) {
  //     if (male == inActiveColor) {
  //       male = activeColor;
  //       female = inActiveColor;
  //     } else {
  //       male = inActiveColor;
  //     }
  //   }
  //   if (selected == Gender.female) {
  //     if (female == inActiveColor) {
  //       female = activeColor;
  //       male = inActiveColor;
  //     } else {
  //       female = inActiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? activeColor
                          : inActiveColor,
                      cardChild: GenderWidget(
                        label: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? activeColor
                          : inActiveColor,
                      cardChild: GenderWidget(
                        label: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeColor,
                    cardChild: Column(
                      children: const [],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeColor,
                    cardChild: Column(
                      children: const [
                        // Icon(
                        //   FontAwesomeIcons.mars,
                        //   size: 80.0,
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
