import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_car_parking/config/colors.dart';

class WithoutFirebase extends GetxController{


  void makePayment() {
     Get.defaultDialog(
        barrierDismissible: false,
        title: "SLOT BOOKED",
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: blueColor,
        ),
        content: Column(
          children: [
            Lottie.asset(
              'assets/animation/done1.json',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Your Slot Booked",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: blueColor,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.currency_rupee,
                  size: 40,
                  color: blueColor,
                ),
                Text(
                  "100",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: blueColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/homepage");
              },
              child: Text("Close"),
            )
          ],
        ));
  }
}