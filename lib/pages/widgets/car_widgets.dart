import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/controller/car_controller.dart';
import 'package:smart_car_parking/pages/booking_page/booking_page.dart';

class CarWidgets extends StatelessWidget {
  final String id;
  final isParked;
  const CarWidgets({super.key, this.isParked = false, required this.id});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              style: BorderStyle.solid,
              color: Colors.grey,
              width: 3,
            ),
            top: BorderSide(
              style: BorderStyle.solid,
              color: Colors.grey,
              width: 3,
            ),
          ),
        ),
        height: 120,
        child: Center(
          child: isParked
              ? Image.asset("assets/images/car.png")
              : InkWell(
                  onTap: () {
                    print(id);
                    Get.bottomSheet(
                      ignoreSafeArea: true,
                      enableDrag: true,
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 400,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              "BOOK SLOT",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Text(
                      "BOOK",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
