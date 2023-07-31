import 'package:figma_skeleton_app/widgets/date_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: DateSelector());
  }
}
