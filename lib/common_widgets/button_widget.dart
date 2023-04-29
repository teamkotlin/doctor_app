import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  Color bgColor;
  Color textColor;

  ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.bgColor = redColor,
      this.textColor = whiteColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color:bgColor),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            Colors.white.withOpacity(0.2),
          ),
        ),
        child: Text(
          text,
          style:  TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
