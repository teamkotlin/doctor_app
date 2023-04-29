import 'package:doctor_app/helpers/public_functions.dart';
import 'package:doctor_app/ui/patient_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../common_widgets/app_logo_container.dart';
import '../common_widgets/button_widget.dart';
import '../common_widgets/drop_down_widget.dart';
import '../common_widgets/icon_placeholder_container.dart';
import '../common_widgets/text_form_field.dart';
import '../constants/colors.dart';
import '../helpers/navigation_helper.dart';
import '../providers/location_provider.dart';
import 'doctor_info_screen.dart';
import 'map_view.dart';
class SignupDoctorScreen extends StatelessWidget {
   SignupDoctorScreen({Key? key}) : super(key: key);
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              120.spaceY,
              const AppLogoContainer(),
              70.spaceY,
              TextFormFieldWidget(
                text: getString('name'),
                controller: name,
                icon: Icons.person,
              ),
              10.spaceY,
              TextFormFieldWidget(
                text: getString('email'),
                controller: email,
                icon: Icons.alternate_email,
                type: TextInputType.emailAddress,
              ),
              10.spaceY,
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
                  )
                ],
              ),
              10.spaceY,
              DropDownWidget(
                leadingImage: 'assets/images/type.png',
                text: getString('select_type'),
              ),
/*              Consumer<LocationProvider>(
                builder: (context, locationProvider, child) {
                  return IconPlaceholderContainer(
                    image: 'assets/images/route.png',
                    text: locationProvider.address ?? getString('address'),
                    onTap: () {
//                  showScreenFromBottom(context, AddressScreen());
                      showScreenFromBottom(context, MapViewScreen());
                    },
                  );
                },
              ),
              10.spaceY,*/
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: ButtonWidget(
                  text: getString('register'),
                  onTap: () {
                    Get.to(() => DoctorInfoScreen());
//                    nextScreen(PatientInfoScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
