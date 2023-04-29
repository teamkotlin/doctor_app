import 'package:doctor_app/ui/find_doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/public_functions.dart';

Widget HomePage() => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Get.to(() => FindDoctorScreen());
          },
          child: Image.asset(
            'assets/images/medica.PNG',
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
        ),
        10.spaceY,
        InkWell(
          onTap: () {
            Get.to(() => FindDoctorScreen());
          },
          child: Image.asset(
            'assets/images/veterina.PNG',
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
        ),

        /*            MainImageContainer(

  image: 'assets/images/medica.jpg',

  title: getString('medica'),

  onTap: () {},

),

30.spaceY,

MainImageContainer(

  image: 'assets/images/veterina.jpg',

  title: getString('Veterinaria'),

  onTap: () {},

),*/
      ],
    );
