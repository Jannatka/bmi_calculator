import 'package:bmi_calculator/constant/colors/app_colors.dart';
import 'package:bmi_calculator/constant/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    Key? key,
    required this.label,
    required this.middelText,
    required this.onPressedPlus,
    required this.onPressedMinus,
  });
  final String label;
  final String middelText;
  final Function() onPressedPlus;
  final Function() onPressedMinus;

  // final void
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.orange, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Text(
              label.toUpperCase(),
              style: AppTextStyles.white25w500,
            ),
            Text(
              middelText,
              style: AppTextStyles.white80w500,
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: onPressedMinus,
                  child: Icon(
                    Icons.remove,
                    size: 55,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: onPressedPlus,
                  child: Icon(
                    Icons.add,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
