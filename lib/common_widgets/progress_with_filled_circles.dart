import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ProgressWithFilledCircles extends StatelessWidget {
  final List<int> list;
  bool threeCircles;

  ProgressWithFilledCircles({required this.list, this.threeCircles = false});

  bool getPosition(int pos) {
    for (var i in list) {
      if (i == pos) return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // adjust height as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          circle(isRed: true),
          line(isRed: true),
          circle(isRed: getPosition(2)),
          line(isRed: getPosition(2)),
          circle(isRed: getPosition(3)),
          threeCircles ? const SizedBox() : line(isRed: getPosition(3)),
          threeCircles ? const SizedBox() : circle(isRed: getPosition(4)),
        ],
      ),
    );
  }
}

Widget circle({bool isRed = false}) => Container(
      height: 22,
      margin: const EdgeInsets.all(4),
      width: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isRed ? redColor : greyShadedColor,
      ),
      child: isRed
          ? Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset('assets/images/tick.png'),
            )
          : null,
    );

Widget line({bool isRed = false}) => Expanded(
      child: Container(
        height: 3,
        color: isRed ? redColor : greyShadedColor,
      ),
    );
