import 'package:doctor_app/helpers/public_functions.dart';
import 'package:flutter/material.dart';

import '../common_widgets/button_widget.dart';
import '../common_widgets/file_upload_container.dart';
import '../common_widgets/progress_with_filled_circles.dart';
import '../common_widgets/text_widgets.dart';
import '../constants/colors.dart';
import '../helpers/navigation_helper.dart';
import 'emergency_contact_screen.dart';
class DocumentUploadScreen extends StatelessWidget {
  const DocumentUploadScreen({Key? key}) : super(key: key);

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
              Align(child: H1(text: getString('documents'),)),
              20.spaceY,
              ProgressWithFilledCircles(list: [1,2],threeCircles: true,),
              20.spaceY,
              H1(text: getString('id_card'),color: blackColor,),
              20.spaceY,
              FileUploadContainer(),
              20.spaceY,
              H1(text: getString('college_card'),color: blackColor,),
              20.spaceY,
              FileUploadContainer(),
              20.spaceY,
              H1(text: getString('medicine_degree'),color: blackColor,),
              20.spaceY,
              FileUploadContainer(),
              20.spaceY,
              H1(text: getString('accreditations'),color: blackColor,),
              20.spaceY,
              Row(
                children: [
                  Expanded(child: FileUploadContainer(iconSize: 50,)),
                  8.spaceX,
                  Expanded(child: FileUploadContainer(iconSize: 50,)),
                  8.spaceX,
                  Expanded(child: FileUploadContainer(image: 'assets/images/add.png',iconSize: 30,)),
                ],
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
