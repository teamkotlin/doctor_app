import 'package:doctor_app/common_widgets/text_widgets.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MainImageContainer extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const MainImageContainer(
      {Key? key, required this.image, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 270,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            )),
            Container(
//          height: 20,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                padding: const EdgeInsets.all(16.0),
                child: Align(child: H1(text: title, color: blackColor,)),
              ),
            ),
          ],
        ) /*ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        )*/
        ,
      ),
    );
  }
}
