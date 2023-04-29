import 'package:flutter/material.dart';

import '../constants/colors.dart';

class IconPlaceholderContainer extends StatelessWidget {
  final String image;
  final String text;
  Color textColor;
  VoidCallback? onTap;

  IconPlaceholderContainer(
      {Key? key,
      required this.image,
      required this.text,
      this.textColor = greyShadedColor,
      this.onTap = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                image,
                width: 20,
                height: 20,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w400, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
