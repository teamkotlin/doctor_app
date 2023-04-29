import 'package:doctor_app/constants/colors.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../common_widgets/button_widget.dart';
import '../common_widgets/text_widgets.dart';

class AddressScreen extends StatelessWidget {
  final address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: H2(
          text: getString('address'),
          color: blackColor,
        ),
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: Container(
                color: Colors.grey,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(37.4220, -122.0841),
                    zoom: 14.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 16),

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter an address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(color: greyShadedColor,width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(color: greyShadedColor,width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(color: greyShadedColor,width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(

                        backgroundColor: MaterialStateProperty.all<Color>(redColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side:const BorderSide(color:redColor),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: Text(getString('search')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
