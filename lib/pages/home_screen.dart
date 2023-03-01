import 'dart:developer';

import 'package:bmi_calculator/constant/colors/app_colors.dart';
import 'package:bmi_calculator/constant/text_style/app_text_style.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<HomeScreen> {
  int _weight = 60;
  int _age = 20;
  ageFunction(String ageMP) {
    if (ageMP == '-') {
      _age--;
    }
    if (ageMP == '+') {
      _age++;
    }
    setState(() {});
  }

  double currentHeightState = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff211834),
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        elevation: 0.0,
        title: const Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  child: GenderWidget(
                    horizontal: 30,
                    vertical: 40,
                    genderText: 'Male',
                    icons: Icons.male,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GenderWidget(
                    horizontal: 20,
                    vertical: 40,
                    genderText: 'Female',
                    icons: Icons.female,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    'Height'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '180',
                        style: TextStyle(
                            fontSize: 55,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'sm',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    thumbColor: Colors.amber,
                    value: currentHeightState,
                    onChanged: (double userValue) {
                      setState(() {});
                      currentHeightState = userValue;
                    },
                    max: 220,
                    min: 0,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: WeightAgeWidget(
                  label: 'Weight',
                  middelText: '$_weight',
                  onPressedMinus: () {
                    ageFunction('-');
                    setState(() {
                      _weight--;
                    });
                  },
                  onPressedPlus: () {},
                ),
              ),
              Expanded(
                child: WeightAgeWidget(
                  label: 'Age',
                  middelText: '$_age',
                  onPressedPlus: () {
                    ageFunction('+');
                    setState(() {
                      _age++;
                    });
                  },
                  onPressedMinus: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: AppColors.purple,
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Calculate',
            textAlign: TextAlign.center,
            style: AppTextStyles.white25w500,
          ),
        ),
      ),
    );
  }
}
