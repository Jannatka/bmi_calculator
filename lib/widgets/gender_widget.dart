import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    Key? key,
    required this.genderText,
    required this.icons,
    required this.horizontal,
    required this.vertical,
  }) : super(key: key);
  final String genderText;
  final IconData icons;
  final double horizontal;
  final double vertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: Column(
          children: [
            Icon(
              icons,
              size: 55,
              color: Colors.white,
            ),
            Text(
              genderText.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
