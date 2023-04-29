import 'package:doctor_app/common_widgets/text_widgets.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:flutter/material.dart';

class TextCrossIcon extends StatelessWidget {
  final String text;
  const TextCrossIcon({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            H2(
              text: text,
              color: blackColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                'assets/images/close.png',
                width: 12,
                height: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
