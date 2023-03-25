import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/controller/car_controller.dart';

class CarWidgets extends StatelessWidget {
  final isParked;
  const CarWidgets({super.key, this.isParked = false});

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
