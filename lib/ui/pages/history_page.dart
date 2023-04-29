import 'package:doctor_app/helpers/public_functions.dart';
import 'package:doctor_app/ui/doctor_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widgets/bordered_circle_avatar.dart';
import '../../common_widgets/text_widgets.dart';
import '../../constants/colors.dart';

Widget HistoryPage() =>
    Column(
      children: [
        50.spaceY,
        historyItem(onTap: (){Get.to(()=>DoctorDetailScreen());}),
        10.spaceY,
      ],
    );

Widget historyItem({required VoidCallback onTap}) =>
    InkWell(
      onTap:onTap,
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child:Row(
            children: [
              BorderedCircleAvatar(size: 60,),
              20.spaceX,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1(text: 'Jose Perez', color: blackColor,),

                    SizedBox(height: 2.0),
                    H2(text: 'Pendiente', color: redColor,),

                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: redColor,
                ),
              )
            ],
          )
      ),
    );