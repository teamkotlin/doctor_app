import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DropDownWidget extends StatelessWidget {
  final String leadingImage;
  final String text;
  Color textColor;
  String trailingImage;

  DropDownWidget(
      {Key? key,
      required this.leadingImage,
      required this.text,
      this.textColor = greyShadedColor,
      this.trailingImage = 'assets/images/down.png'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greyShadedColor, width: 2)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              leadingImage,
              width: 20,
              height: 20,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w400, color: textColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              trailingImage,
              width: 16,
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
