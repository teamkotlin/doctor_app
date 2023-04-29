import 'package:doctor_app/common_widgets/text_cross_icon.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../common_widgets/button_widget.dart';
import '../common_widgets/drop_down_widget.dart';
import '../common_widgets/progress_with_filled_circles.dart';
import '../common_widgets/text_form_field.dart';
import '../common_widgets/text_widgets.dart';
import '../helpers/navigation_helper.dart';
import '../helpers/public_functions.dart';
import 'emergency_contact_screen.dart';

class PatientInfoScreen extends StatelessWidget {
  PatientInfoScreen({Key? key}) : super(key: key);

  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.spaceY,
              Align(
                  child: H2(
                text: getString('patient_info'),
                color: blackColor,
                size: 20,
              )),
              10.spaceY,
               ProgressWithFilledCircles(
                list: [1],
              ),
              20.spaceY,
              TextFormFieldWidget(
                text: getString('name'),
                controller: name,
                icon: Icons.person,
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/blood.png',
                text: getString('blood_type'),
              ),
              20.spaceY,
              H2(
                text: getString('allergy'),
                size: 18,
                color: blackColor,
              ),
              20.spaceY,
              Row(
                children: [
                  TextCrossIcon(
                    text: getString('Poland'),
                  ),
                  12.spaceX,
                  TextCrossIcon(
                    text: getString('bee_venom'),
                  ),
                ],
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/hand.png',
                text: getString('choose_allergy'),
              ),
              20.spaceY,
              H2(
                text: getString('diagnose_disease'),
                size: 18,
                color: blackColor,
              ),
              20.spaceY,
              Row(
                children: [
                  TextCrossIcon(
                    text: getString('diarrhea'),
                  ),
                  12.spaceX,
                  TextCrossIcon(
                    text: getString('dolores_de_cabeza'),
                  ),
                ],
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/disease.png',
                text: getString('choose_disease'),
              ),
              20.spaceY,
              H2(
                text: getString('current_treatments'),
                size: 18,
                color: blackColor,
              ),
              20.spaceY,
              Row(
                children: [
                  TextCrossIcon(
                    text: getString('vaccine_therapy'),
                  ),
                  12.spaceX,
                  TextCrossIcon(
                    text: getString('surgery'),
                  ),
                ],
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/disease.png',
                text: getString('choose_treatments'),
              ),
              20.spaceY,
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
                      nextScreen(EmergencyContactScreen());
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
