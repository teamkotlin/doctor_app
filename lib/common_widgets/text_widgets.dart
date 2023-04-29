import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';
class H1 extends StatelessWidget {
  final String text;
  double size;
  Color color;
   H1({Key? key,required this.text,this.size=18,this.color=blackShadowColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w500,
      color: color
    ),);
  }
}
class H2 extends StatelessWidget {
  final String text;
  double size;
  Color color;
  H2({Key? key,required this.text,this.size=16,this.color=blackShadowColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: size,
        color: color
    ),);
  }
}

