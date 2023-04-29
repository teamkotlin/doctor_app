import 'package:doctor_app/common_widgets/text_widgets.dart';
import 'package:doctor_app/helpers/public_functions.dart';
import 'package:doctor_app/ui/pages/history_page.dart';
import 'package:doctor_app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../common_widgets/bottom_navigation.dart';
import '../common_widgets/main_image_container.dart';
import '../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void callBack(int index) {
    _selctedIndex = index;
    setState(() {});
  }

  int _selctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _selctedIndex == 0
            ? HomePage()
            : HistoryPage(),
      ),
      bottomNavigationBar: BottomNavigation(
        callBack: callBack,
      ),
    );
  }
}


