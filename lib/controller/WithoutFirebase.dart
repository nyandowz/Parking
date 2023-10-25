import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/controller/model/car_model.dart';

class WithoutFirebase extends GetxController {
  final fb = FirebaseDatabase.instance;
  var parkingHours = 10.0.obs;
  var amountPay = 100.0.obs;
  var selectedFloor = "1st Floor".obs;
  TextEditingController name = TextEditingController();
  var slot1Time = "".obs;
  var slot2Time = "".obs;
  var slot3Time = "".obs;
  var slot4Time = "".obs;
  var slot5Time = "".obs;
  var slot6Time = "".obs;
  var slot7Time = "".obs;
  var slot8Time = "".obs;
  var slot1KEY = "-NRdY57houxuL83j7cok";
  var slot2KEY = "-NRdYRojJXhw3_aixhnM";
  var slot3KEY = "-NRdYTO7yp_MbMxjhic3";
  var slot4KEY = "-NRdYWXOcd8oWymDLroj";
  var slot5KEY = "-NRh9RiMNakdmIi6fZUv";
  var slot6KEY = "-NRh9UdC92OokxV__NlW";
  var slot7KEY = "-NRhCKffU8n0q23MErf5";
  var slot8KEY = "-NRhCR1Szb2a59nUtcfs";
  var slot1 = false.obs;
  var slot2 = false.obs;
  var slot3 = false.obs;
  var slot4 = false.obs;
  var slot5 = false.obs;
  var slot6 = false.obs;
  var slot7 = false.obs;
  var slot8 = false.obs;


 void amountCalculator() {
    amountPay.value = parkingHours.value * 10;
  }
  void makePayment(String slotId) {
   
    Get.defaultDialog(
        barrierDismissible: false,
        title: "SLOT BOOKED",
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: blueColor,
        ),
        content: Column(
          children: [
            Lottie.asset(
              'assets/animation/done1.json',
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                 "$amountPay",
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
                Get.back();
              },
              child: Text("Close"),
            )
          ],
        ));
    if (slotId == slot1KEY) {
      slot1.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot1.value = false;
      });
    } else if (slotId == slot2KEY) {
      slot2.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot2.value = false;
      });
    } else if (slotId == slot3KEY) {
       slot3.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot3.value = false;
      });
    } else if (slotId == slot4KEY) {
    slot4.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot4.value = false;
      });
    } else if (slotId == slot5KEY) {
      slot5.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot5.value = false;
      });
    } else if (slotId == slot6KEY) {
      slot6.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot6.value = false;
      });
    } else if (slotId == slot7KEY) {
       slot7.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot7.value = false;
      });
    } else {
       slot8.value = true;
      Future.delayed(Duration(seconds: 10),(){
        slot8.value = false;
      });
    }
  }


}
