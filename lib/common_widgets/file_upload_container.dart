import 'package:doctor_app/common_widgets/text_widgets.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FileUploadContainer extends StatelessWidget {
  String? image;
  double iconSize;

  FileUploadContainer({Key? key, this.image,this.iconSize=60}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [8],
      borderType: BorderType.RRect,
      radius: Radius.circular(6),
      color: greyShadedColor,
      strokeWidth: 1,
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
//        borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image != null ? image! : 'assets/images/file.png',
                fit: BoxFit.cover,
                height: iconSize,
                width: iconSize,
              ),
            ),
            10.spaceY,
            image==null? H2(text: getString('upload_photo')):const SizedBox(),
          ],
        ),
      ),
    );
  }
}
