import 'package:doctor_app/helpers/public_functions.dart';
import 'package:doctor_app/ui/patient_info_screen.dart';
import 'package:doctor_app/ui/signup_doctor_screen.dart';
import 'package:doctor_app/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/app_logo_container.dart';
import '../common_widgets/button_widget.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogoContainer(),
            50.spaceY,
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: ButtonWidget(
                text: 'Registrarse como doctora',
                onTap: () {
                  Get.to(() => SignupDoctorScreen());
//                    nextScreen(PatientInfoScreen());
                },
              ),
            ),
            0.spaceY,
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: ButtonWidget(
                text: 'registrarse como paciente',
                onTap: () {
                  Get.to(() => SignupScreen());
//                    nextScreen(PatientInfoScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
