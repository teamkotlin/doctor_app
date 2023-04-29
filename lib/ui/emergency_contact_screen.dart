import 'package:doctor_app/helpers/public_functions.dart';
import 'package:doctor_app/ui/pay_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/button_widget.dart';
import '../common_widgets/drop_down_widget.dart';
import '../common_widgets/icon_placeholder_container.dart';
import '../common_widgets/progress_with_filled_circles.dart';
import '../common_widgets/text_form_field.dart';
import '../common_widgets/text_widgets.dart';
import '../constants/colors.dart';
import '../helpers/navigation_helper.dart';

class EmergencyContactScreen extends StatelessWidget {
  EmergencyContactScreen({Key? key}) : super(key: key);
  final phone = TextEditingController();
  final secondPhone = TextEditingController();

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
                    text: getString('emergency_contacts'),
                    color: blackColor,
                    size: 20),
              ),
              10.spaceY,
              ProgressWithFilledCircles(list: [1,2],),
              20.spaceY,
              H1(
                text: getString('primary_contact'),
                color: blackColor,
              ),
              20.spaceY,
              Row(
                children: [
                  IconPlaceholderContainer(
                    image: 'assets/images/flag/bolivia.png',
                    text: '+591',
                    textColor: blackColor,
                  ),
                  6.spaceX,
                  Expanded(
                    child: TextFormFieldWidget(
                      text: getString('phone'),
                      controller: phone,
                      type: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/relation.png',
                text: getString('choose_relation'),
              ),
              ////
              20.spaceY,
              H1(
                text: getString('second_contact'),
                color: blackColor,
              ),
              20.spaceY,
              Row(
                children: [
                  IconPlaceholderContainer(
                    image: 'assets/images/flag/bolivia.png',
                    text: '+591',
                    textColor: blackColor,
                  ),
                  6.spaceX,
                  Expanded(
                    child: TextFormFieldWidget(
                      text: getString('phone'),
                      controller: secondPhone,
                      type: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/relation.png',
                text: getString('choose_relation'),
              ),
              50.spaceY,
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
                      //nextScreen(PayScreen());
                      Get.to(() => PayScreen());
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
