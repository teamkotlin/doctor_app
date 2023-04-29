import 'package:flutter/material.dart';

import '../common_widgets/bordered_circle_avatar.dart';
import '../common_widgets/button_widget.dart';
import '../common_widgets/progress_with_filled_circles.dart';
import '../common_widgets/text_form_field.dart';
import '../common_widgets/text_widgets.dart';
import '../constants/colors.dart';
import '../helpers/navigation_helper.dart';
import '../helpers/public_functions.dart';
import 'doctor_home_screen.dart';
import 'documents_upload_screen.dart';
import 'emergency_contact_screen.dart';

class DoctorInfoScreen extends StatelessWidget {
  DoctorInfoScreen({Key? key}) : super(key: key);
  final bank = TextEditingController();
  final account = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              50.spaceY,
              H1(text: getString('doctor_info'),),
              20.spaceY,
              ProgressWithFilledCircles(list: [1],threeCircles: true,),
              20.spaceY,
              BorderedCircleAvatar(showPlusButton: true,),
              50.spaceY,
              TextFormFieldWidget(
                text: getString('bank_name'),
                controller: bank,
                image: 'assets/images/bank.png',
              ),
              10.spaceY,
              TextFormFieldWidget(
                text: getString('account_number'),
                controller: account,
                image: 'assets/images/bank.png',
              ),
              10.spaceY,
              TextFormFieldWidget(
                text: getString('reg_number'),
                controller: account,
                image: 'assets/images/numbers.png',
              ),
              30.spaceY,
              Row(
                children: [
                  Expanded(
                      child: ButtonWidget(
                    text: getString('atras'),
                    onTap: back,
                    bgColor: whiteColor,
                    textColor: redColor,
                  )),
                  12.spaceX,
                  Expanded(
                      child: ButtonWidget(
                    text: getString('proxima'),
                    onTap: () {
                      nextScreen(DoctorHomeScreen());
                    },
                    bgColor: redColor,
                    textColor: whiteColor,
                  )),
                ],
              ),
              20.spaceY,
            ],
          ),
        ),
      ),
    );
  }
}
