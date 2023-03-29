import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/controller/model/car_model.dart';
import 'package:smart_car_parking/controller/parking_controller.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    ParkingController parkingController = Get.put(ParkingController());
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              // DemoController.updateData();
              // DemoController.getData();
              // parkingController.getDataObject();

              // DemoController.addCar(CarModel(
              //   booked: true,
              //   isParked: false,
              //   name: "nitish",
              //   parkedFrom: "12",
              //   parkedTo: "34",
              //   paymentDone: true,
              // ));
            },
            child: const Icon(
              Icons.home,
              size: 90,
              color: Colors.deepPurple,
            )),
      ),
    );
  }
}
