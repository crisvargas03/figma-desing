import 'package:flutter/material.dart';
import '../constants/colors.dart';

class DayItem extends StatelessWidget {
  const DayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 55,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: secondaryBlue,
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text("DOM"),
              Text("02"),
            ],
          ),
        ),
      ),
    );
  }
}
