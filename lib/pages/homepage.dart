import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/controller/model/car_model.dart';
import 'package:smart_car_parking/controller/parking_controller.dart';
import 'package:smart_car_parking/pages/widgets/parking_slot.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ParkingController parkingController = Get.put(ParkingController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "SMART CAR PARKING",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              parkingController.addCar(CarModel(
                booked: false,
                isParked: true,
                name: "Nitish kumar",
                parkedFrom: "12",
                paymentDone: true,
                parkedTo: "12",
              ));
            },
            icon: Icon(
              Icons.car_repair,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Parking Slots",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "First Floor",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.blue),
                            ),
                            Icon(
                              Icons.arrow_downward,
                              size: 15,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text("Entry"),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot1.value.booked,
                        isParked: parkingController.slot1.value.isParked,
                        slotName: "A-1",
                      ),
                    )),
                    SizedBox(
                      width: 60,
                      child: VerticalDivider(
                        color: Colors.blue.shade300,
                        thickness: 1,
                      ),
                      height: 60,
                    ),
                    Expanded(
                      child: ParkingSlot(
                        isBooked: parkingController.slot2.value.booked,
                        isParked: parkingController.slot2.value.isParked,
                        slotName: "A-2",
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot3.value.booked,
                        isParked: parkingController.slot3.value.isParked,
                        slotName: "A-3",
                      ),
                    )),
                    SizedBox(
                      width: 60,
                      child: VerticalDivider(
                        color: Colors.blue.shade300,
                        thickness: 1,
                      ),
                      height: 60,
                    ),
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot4.value.booked,
                        isParked: parkingController.slot4.value.isParked,
                        slotName: "A-4",
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot5.value.booked,
                        isParked: parkingController.slot5.value.isParked,
                        slotName: "A-5",
                      ),
                    )),
                    SizedBox(
                      width: 60,
                      child: VerticalDivider(
                        color: Colors.blue.shade300,
                        thickness: 1,
                      ),
                      height: 60,
                    ),
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot6.value.booked,
                        isParked: parkingController.slot6.value.isParked,
                        slotName: "A-6",
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot7.value.booked,
                        isParked: parkingController.slot7.value.isParked,
                        slotName: "A-7",
                      ),
                    )),
                    SizedBox(
                      width: 60,
                      child: VerticalDivider(
                        color: Colors.blue.shade300,
                        thickness: 1,
                      ),
                      height: 60,
                    ),
                    Expanded(
                        child: Obx(
                      () => ParkingSlot(
                        isBooked: parkingController.slot8.value.booked,
                        isParked: parkingController.slot8.value.isParked,
                        slotName: "A-8",
                      ),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [Text("Exit"), Icon(Icons.keyboard_arrow_down)],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
