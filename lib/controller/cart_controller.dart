import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var productCounter = 1.obs; // make it observable and changeable state

  //int get sum => productCounter.value

  incrementProduct() {
    for (var i = productCounter.value; i == 5; i++) {
      productCounter.value=i++;
      break;
    }
  }

  decrementProduct() {
    if (productCounter.value <= 0) {
      Get.snackbar(
        "Buying Products",
        "Buying not supported for less than zero",
        icon: Icon(Icons.error),
        barBlur: 10,
        isDismissible: true,
        duration: Duration(seconds: 1),
      );
    } else {
      productCounter.value--;
    }
  }
}
