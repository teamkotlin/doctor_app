import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'dart:io';
extension MyIntExtensions  on int {
  SizedBox get spaceX => SizedBox(
        width: this.toDouble(),
      );

  SizedBox get spaceY => SizedBox(
        height: this.toDouble(),
      );
}
String getString(String key) {
  key = key.toLowerCase();
  if (key != '') {
    return key.tr ?? '';
  } else {
    return '';
  }
}

void showToast(String message) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0);
}
double convertDouble(num) {
  try {
    // print(num);
    if (num is double) {
      return num;
    }
    if (num != null) {
      double? a = double.tryParse(num);
      // print("a");
      // print(a);
      return a == null ? 0 : a;
    } else {
      // print("herenum");
      return 0;
    }
  } catch (e) {
    print(e);
    return 0;
  }
}




