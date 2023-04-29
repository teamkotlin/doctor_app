import 'package:doctor_app/constants/colors.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:flutter/material.dart';

import '../common_widgets/bordered_circle_avatar.dart';
import '../common_widgets/button_widget.dart';
import '../common_widgets/polylines.dart';
import '../common_widgets/text_widgets.dart';

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  bool offerReceived = false;
  bool offerAccepted = false;
  bool showCompleteOfferWidget = false;

  void changeView() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        offerReceived = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    changeView();
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
                    originLatitude: 6.849660,
                    originLongitude: 3.648190,
                    destLatitude: 6.7212402,
                    destLongitude: 3.6679965)),
          ),
          Positioned(
              top: 40,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Icon(
                      Icons.history,
                      color: redColor,
                    ),
                    4.spaceX,
                    H2(
                      text: 'History',
                      color: Colors.black,
                    )
                  ],
                ),
              )),
          Positioned(
            top: 40,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(6)),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: greenColor,
                    ),
                  ),
                  4.spaceX,
                  H2(
                    text: 'Online',
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: !offerReceived
                ? SizedBox()
                : !offerAccepted
                    ? getOfferReceivedContainer(onAccept: () {
                        setState(() {
                          offerAccepted = true;
                        });
                        Future.delayed(const Duration(seconds: 3), () {
                          setState(() {
                            showCompleteOfferWidget = true;
                          });
                        });
                      })
                    : showCompleteOfferWidget
                        ? getOfferCompleteWidget()
                        : getOfferAcceptedWidget(),
          ),
        ],
      ),
    );
  }
}

Widget getOfferReceivedContainer({required Function onAccept}) => Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
                        text: 'Fernando',
                        color: blackColor,
                      ),
                      4.spaceY,
                      H2(
                        text: '+591 62095357',
                      ),
                      2.spaceY,
                      H2(
                        text: getString('emergency'),
                        color: redColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            10.spaceY,
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
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
                      onAccept();
                    },
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );

Widget getOfferAcceptedWidget() => Container(
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
                        text: 'Fernando',
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

Widget getOfferCompleteWidget() => Container(
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
                        text: 'Fernando',
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
              child: ButtonWidget(text: getString('finish'), onTap: () {}),
            ),
          ],
        ),
      ),
    );
