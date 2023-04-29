import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../ui/home_screen.dart';
import '../ui/login_screen.dart';

void nextScreen(Widget screen) {
  Get.to(() => screen);
}

void back() {
  Get.back();
}

void moveToHome() {
  Get.offAll(() => const HomeScreen());
}

void backToLogin() {
  Get.offAll(() => const LoginScreen());
}

void showScreenFromBottom(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return screen;
      },
      transitionDuration: Duration(milliseconds: 300),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0, 1.50),
            end: Offset(0.0, 0.0),
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}
