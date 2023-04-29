import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  IconData? icon;
  TextInputType type;
  String? image;

  TextFormFieldWidget(
      {Key? key,
      required this.text,
      required this.controller,
      this.icon,
      this.type = TextInputType.text,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        hintText: text,
        hintStyle:const TextStyle(
          color: greyShadedColor,
          fontStyle: FontStyle.italic,
        ),
        prefixIcon: icon == null
            ? image!=null? Padding(
                padding: const EdgeInsets.all( 12),
                child: Image.asset(
                  image!,
                  width: 4,
                  height: 4,
                ),
              ):const SizedBox()
            : Icon(icon, color: greyShadedColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greyShadedColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greyShadedColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greyShadedColor, width: 2),
        ),
      ),
    );
    ;
  }
}
