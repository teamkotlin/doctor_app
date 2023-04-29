import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BorderedCircleAvatar extends StatelessWidget {
  double size;
  bool showPlusButton;

  BorderedCircleAvatar({Key? key, this.size = 100, this.showPlusButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: whiteColor,
              shape: BoxShape.circle,
              border: Border.all(color: greyShadedColor, width: 1.5)),
          child: Padding(
            padding: EdgeInsets.all(size / 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
        showPlusButton
            ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    decoration: const BoxDecoration(
                        color: redColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.add,
                        color: whiteColor,
                        size: 22,
                      ),
                    )))
            : const SizedBox()
      ],
    );
  }
}
