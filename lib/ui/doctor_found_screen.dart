import 'package:doctor_app/common_widgets/rating_bar_widget.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:doctor_app/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widgets/bordered_circle_avatar.dart';
import '../common_widgets/button_widget.dart';
import '../common_widgets/polylines.dart';
import '../common_widgets/text_widgets.dart';
import '../constants/colors.dart';

class DoctorFoundScreen extends StatefulWidget {
  const DoctorFoundScreen({Key? key}) : super(key: key);

  @override
  State<DoctorFoundScreen> createState() => _DoctorFoundScreenState();
}

class _DoctorFoundScreenState extends State<DoctorFoundScreen> {
  bool accepted = false;
  bool arriving = false;
  bool showRating = false;

  void changeView() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        arriving = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Positioned.fill(
                child: PolylineContainer(
                    originLatitude: 6.5212402,
                    originLongitude: 3.3679965,
                    destLatitude: 6.539660,
                    destLongitude: 3.358190)),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: accepted
                  ? arriving
                      ? showRating
                          ? getRatingContainer(onFinish: () {
                              Get.to(() => SignupScreen());
                            })
                          : getDoctorArriedContainer(function: () {
                              setState(() {
                                showRating = true;
                              });
                            })
                      : getDoctorArrivalContainer()
                  : getDoctorDetailContainer(accept: () {
                      setState(() {
                        accepted = true;
                      });
                      changeView();
                    })),
        ],
      ),
    );
  }
}

Widget getDoctorDetailContainer({required Function accept}) => Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                BorderedCircleAvatar(
                  size: 70,
                ),
                20.spaceX,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1(
                        text: 'Jose Perez',
                        color: blackColor,
                      ),
                      4.spaceY,
                      H2(
                        text: '+591 62095357',
                      ),
                      2.spaceY,
                      H2(
                        text: getString('accepted'),
                        color: greenColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            10.spaceY,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  H2(text: getString('service_completion') + ' :'),
                  H2(
                    text: getString('   30/32'),
                    color: blackColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
              child: Row(
                children: [
                  H2(text: getString('rating') + ' :'),
                  H2(
                    text: getString('   3.4/5'),
                    color: blackColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
              child: Row(
                children: [
                  H2(text: getString('amount') + ' :'),
                  H2(
                    text: '   100 USD',
                    color: blackColor,
                  ),
                ],
              ),
            ),
            10.spaceY,
            Padding(
              padding: const EdgeInsets.only(left: 120.0),
              child: Row(
                children: [
                  Expanded(
                      child: ButtonWidget(
                    text: getString('reject'),
                    onTap: () {},
                    bgColor: whiteColor,
                    textColor: blackColor,
                  )),
                  20.spaceX,
                  Expanded(
                      child: ButtonWidget(
                    text: getString('accept'),
                    onTap: () {
                      accept();
                    },
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );

Widget getDoctorArrivalContainer() => Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 160,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                BorderedCircleAvatar(
                  size: 70,
                ),
                20.spaceX,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1(
                        text: 'Jose Perez',
                        color: blackColor,
                      ),
                      4.spaceY,
                      H2(
                        text: '+591 62095357',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            10.spaceY,
            H1(
              text: "${getString('arround')} 15-20 ${getString('minutes')}",
              color: blackColor,
            ),
            H2(
              text: getString('time-to-arrive-doctor'),
            ),
          ],
        ),
      ),
    );

Widget getDoctorArriedContainer({required Function function}) => Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 220,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                BorderedCircleAvatar(
                  size: 70,
                ),
                20.spaceX,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1(
                        text: 'Jose Perez',
                        color: blackColor,
                      ),
                      4.spaceY,
                      H2(
                        text: '+591 62095357',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            10.spaceY,
            H1(
              text: getString('i_arrive_at_location'),
              color: blackColor,
            ),
            H2(
              text: getString('click_to_complete_service'),
            ),
            10.spaceY,
            Padding(
              padding: const EdgeInsets.only(left: 220.0),
              child: ButtonWidget(
                  text: getString('made'),
                  onTap: () {
                    function();
                  }),
            ),
          ],
        ),
      ),
    );

Widget getRatingContainer({required Function onFinish}) => Container(
      height: 250,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              width: double.infinity,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    30.spaceY,
                    H1(
                      text: getString('leave_rating'),
                      color: blackColor,
                    ),
                    10.spaceY,
                    RatingBarWidget(),
                    10.spaceY,
                    Padding(
                      padding: const EdgeInsets.only(left: 220.0),
                      child: ButtonWidget(
                          text: getString('finish'),
                          onTap: () {
                            onFinish();
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: Get.width / 2 - 35,
              child: BorderedCircleAvatar(
                size: 70,
              )),
        ],
      ),
    );
