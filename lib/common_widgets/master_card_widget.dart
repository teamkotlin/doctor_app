import 'package:doctor_app/common_widgets/text_widgets.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MasterCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240, // adjust height as needed
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: greyShadedColor, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
/*        gradient: LinearGradient(
          colors: [
            Colors.blue.shade800,
            Colors.blue.shade600,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),*/
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/sim.png',
                  width: 60,
                  height: 60,
                ),
                H2(text: 'Tarjeta de Debito'),
              ],
            ),
            SizedBox(height: 20),
            Align(
                child: H1(
              text: 'Jose Perez',
              color: blackColor,
            )),
            SizedBox(height: 20),
            H1(
              text: '1234 5678 9012 3456',
              color: blackColor,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2(text: 'Expiracion : 02/03',color: blackColor,),

                  ],

                ),
                H2(text: 'CVC: 4444',color: blackColor,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Row(
                      children: [

                        SizedBox(width: 28),
                        Image.asset(
                          'assets/images/mastercard.png',
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
