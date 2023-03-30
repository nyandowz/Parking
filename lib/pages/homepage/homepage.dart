import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_car_parking/components/floot_selector.dart';
import 'package:smart_car_parking/controller/model/car_model.dart';
import 'package:smart_car_parking/controller/parking_controller.dart';
import 'package:smart_car_parking/components/parking_slot.dart';

import '../../config/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ParkingController parkingController = Get.put(ParkingController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/white_logo.png",
                width: 40,
                height: 40,
              ),
              SizedBox(width: 20),
              const Text(
                "SMART CAR PARKING",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ))
          ],
          centerTitle: true,
        ),
        body: Obx(
          () => SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
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
                            FloorSelector(),
                            // Row(
                            //   children: [
                            //     Text(
                            //       "First Floor",
                            //       style:
                            //           TextStyle(fontSize: 15, color: blueColor),
                            //     ),
                            //     Icon(
                            //       Icons.arrow_downward,
                            //       size: 15,
                            //       color: blueColor,
                            //     )
                            //   ],
                            // ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text("ENTRY"),
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
                            slotId: parkingController.slot1KEY,
                          ),
                        )),
                        SizedBox(
                          width: 60,
                          child: VerticalDivider(
                            color: blueColor,
                            thickness: 1,
                          ),
                          height: 60,
                        ),
                        Expanded(
                          child: ParkingSlot(
                            isBooked: parkingController.slot2.value.booked,
                            isParked: parkingController.slot2.value.isParked,
                            slotName: "A-2",
                            slotId: parkingController.slot2KEY,
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
                            slotId: parkingController.slot3KEY,
                            isBooked: parkingController.slot3.value.booked,
                            isParked: parkingController.slot3.value.isParked,
                            slotName: "A-3",
                          ),
                        )),
                        SizedBox(
                          width: 60,
                          child: VerticalDivider(
                            color: blueColor,
                            thickness: 1,
                          ),
                          height: 60,
                        ),
                        Expanded(
                            child: Obx(
                          () => ParkingSlot(
                            slotId: parkingController.slot4KEY,
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
                            slotId: parkingController.slot5KEY,
                            isBooked: parkingController.slot5.value.booked,
                            isParked: parkingController.slot5.value.isParked,
                            slotName: "A-5",
                          ),
                        )),
                        SizedBox(
                          width: 60,
                          child: VerticalDivider(
                            color: blueColor,
                            thickness: 1,
                          ),
                          height: 60,
                        ),
                        Expanded(
                            child: Obx(
                          () => ParkingSlot(
                            slotId: parkingController.slot6KEY,
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
                            slotId: parkingController.slot7KEY,
                            isBooked: parkingController.slot7.value.booked,
                            isParked: parkingController.slot7.value.isParked,
                            slotName: "A-7",
                          ),
                        )),
                        SizedBox(
                          width: 60,
                          child: VerticalDivider(
                            color: blueColor,
                            thickness: 1,
                          ),
                          height: 60,
                        ),
                        Expanded(
                            child: Obx(
                          () => ParkingSlot(
                            slotId: parkingController.slot8KEY,
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
                          children: [
                            Text("EXIT"),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Made By : Ni30 Roy",
                          style: TextStyle(
                            color: lightBg,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
