import 'package:doctor_app/common_widgets/bordered_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/polylines.dart';
import '../common_widgets/shimmer_skeleton.dart';
import '../common_widgets/text_widgets.dart';
import '../constants/colors.dart';
import '../helpers/public_functions.dart';
import 'doctor_found_screen.dart';

class FindDoctorScreen extends StatefulWidget {
  FindDoctorScreen({Key? key}) : super(key: key);

  @override
  State<FindDoctorScreen> createState() => _FindDoctorScreenState();
}

class _FindDoctorScreenState extends State<FindDoctorScreen> {
  final GlobalKey globalKey = GlobalKey();

  bool isConnecting = true;
  String name = '';
  String status = '';
  Color color = blackShadowColor;

  void changeView() {
    Future.delayed(const Duration(seconds: 3), () {
      name = 'Fernando';
      status = getString('connecting') + ' ...';
      if (mounted) {
        setState(() {
          isConnecting = false;
        });
      }
      Future.delayed(const Duration(seconds: 3), () {
        name = 'Fernando';
        status = getString('rejected');
        color = redColor;
        setState(() {});
        Future.delayed(const Duration(seconds: 3), () {
          setState(() {
            isConnecting = true;
          });
          Future.delayed(const Duration(seconds: 3), () {
            name = 'Jose Perez';
            status = getString('connecting');
            color = blackShadowColor;
            setState(() {
              isConnecting = false;
            });
            Future.delayed(const Duration(seconds: 3),(){
              Get.to(()=>DoctorFoundScreen());
            });
          });
        });
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: H2(
          text: getString('find_doctor_near_you'),
          color: blackColor,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Positioned.fill(
                child: PolylineContainer(
                    originLatitude: 6.5212402,
                    originLongitude: 3.3679965,
                    destLatitude: 6.849660,
                    destLongitude: 3.648190)),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: isConnecting
                  ? getShimmerEffect()
                  : getConnectingWidget(name, status, color)),
        ],
      ),
    );
  }
}

Widget getShimmerEffect() => Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ShimmerSkeleton(
              width: 70,
              height: 70,
              radius: 50,
            ),
            20.spaceX,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShimmerSkeleton(height: 40, width: double.infinity),
                  10.spaceY,
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: ShimmerSkeleton(height: 20, width: double.infinity),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget getConnectingWidget(String name, String status, Color color) =>
    Container(
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
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
                    text: name,
                    color: blackColor,
                  ),
                  4.spaceY,
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: H2(
                      text: status,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
//double _originLatitude = 6.5212402, _originLongitude = 3.3679965;
// double _destLatitude = 6.849660, _destLongitude = 3.648190;
