import 'package:figma_skeleton_app/widgets/day_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class DateSelector extends StatelessWidget {
  const DateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Text(
                "Select your date",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primaryBlue,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(CupertinoIcons.chevron_compact_left),
                  onPressed: null,
                  iconSize: 40,
                ),
                Text("Octuber 2023",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue,
                    )),
                IconButton(
                  icon: Icon(CupertinoIcons.chevron_compact_right),
                  onPressed: null,
                  iconSize: 40,
                ),
              ],
            ),
          ),
        ),
        DayItem()
      ],
    );
  }
}
