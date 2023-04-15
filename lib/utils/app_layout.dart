import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static screenHeight() {
    return Get.height;
  }

  static screenWidth() {
    return Get.width;
  }

  static height(double pixels) {
    double x = screenHeight()/pixels;
    return screenHeight()/x;
  }

  static width(double pixels) {
    double x = screenWidth()/pixels;
    return screenWidth()/x;
  }
}