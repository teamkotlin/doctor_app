import 'package:doctor_app/common_widgets/text_widgets.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:flutter/material.dart';

import '../common_widgets/bordered_circle_avatar.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            80.spaceY,
            BorderedCircleAvatar(),
            30.spaceY,
            Container(
              padding: EdgeInsets.all(12),
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
                  keyValue(getString('name'), 'Jose Perez'),
                  keyValue(getString('telephone'), '+591 62095357'),
                  keyValue(getString('classification'), '4.6/5'),
                  keyValue(getString('date'), '18 de enero de 2023'),
                  keyValue(getString('state'), 'Terminada'),
                  keyValue(getString('amount'), '100 USD'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget keyValue(String key, String value) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: H2(text: key)),
          Expanded(
            child: H2(
              text: value,
              color: blackColor,
            ),
          ),
        ],
      ),
    );
