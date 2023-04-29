import 'package:doctor_app/helpers/public_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widgets/button_widget.dart';
import '../common_widgets/icon_placeholder_container.dart';
import '../common_widgets/master_card_widget.dart';
import '../common_widgets/progress_with_filled_circles.dart';
import '../common_widgets/text_form_field.dart';
import '../common_widgets/text_widgets.dart';
import '../constants/colors.dart';
import '../helpers/navigation_helper.dart';
import 'home_screen.dart';

class PayScreen extends StatelessWidget {
  PayScreen({Key? key}) : super(key: key);
  final name = TextEditingController();
  final cardNumber = TextEditingController();
  final cvc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              50.spaceY,
              Align(
                child: H2(text: getString('pay'), color: blackColor, size: 20),
              ),
              10.spaceY,
               ProgressWithFilledCircles(list: [1,2,3],),
              20.spaceY,
              MasterCardWidget(),
              20.spaceY,
              TextFormFieldWidget(
                text: getString('name'),
                controller: name,
                icon: Icons.person,
              ),
              10.spaceY,
              TextFormFieldWidget(
                text: getString('card_number'),
                controller: cardNumber,
                icon: Icons.credit_card,
              ),
              10.spaceY,
              Row(children: [
                Expanded(
                  child: IconPlaceholderContainer(
                    image: 'assets/images/calendar.png',
                    text: getString('month'),
                    onTap: () {

                    },
                  ),
                ),
                10.spaceX,
                Expanded(
                  child: IconPlaceholderContainer(
                    image: 'assets/images/calendar.png',
                    text: getString('year'),
                    onTap: () {

                    },
                  ),
                ),
              ],),
              10.spaceY,
              TextFormFieldWidget(
                text: 'CVC',
                controller: cvc,
                icon: Icons.credit_card_outlined,
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
                    text: getString('finish'),
                    onTap: () {
//                      nextScreen(HomeScreen());
                      Get.to(() => HomeScreen());
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
