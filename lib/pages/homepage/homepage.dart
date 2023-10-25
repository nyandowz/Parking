import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/components/floot_selector.dart';
import 'package:smart_car_parking/components/parking_slot.dart';
import 'package:smart_car_parking/controller/WithoutFirebase.dart';

import '../../config/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WithoutFirebase parkingController = Get.put(WithoutFirebase());
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
              const SizedBox(width: 20),
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
                onPressed: () {
                  Get.toNamed("/about-us");
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                )),
          ],
          centerTitle: true,
        ),
        body: Obx(
          () => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Parking Slots",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            FloorSelector(),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 60),
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
                            isBooked: parkingController.slot1.value,
                            isParked: parkingController.slot1.value,
                            slotName: "A-1",
                            slotId: parkingController.slot1KEY,
                            time: "10",
                          ),),),
                        const SizedBox(
                          width: 60,
                          child: VerticalDivider(
                            color: blueColor,
                            thickness: 1,
                          ),
                          height: 60,
                        ),
                        Expanded(
                          child:ParkingSlot(
                            isBooked: parkingController.slot2.value,
                            isParked: parkingController.slot2.value,
                            slotName: "A-2",
                            slotId: parkingController.slot2KEY,
                            time: "10",
                           ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                            child: Obx(
                          () => ParkingSlot(
                            slotId: parkingController.slot3KEY,
                            isBooked: parkingController.slot3.value,
                            isParked: parkingController.slot3.value,
                            time: "10",
                            slotName: "A-3",
                          ),
                        )),
                        const SizedBox(
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
                            isBooked: parkingController.slot4.value,
                            isParked: parkingController.slot4.value,
                            slotName: "A-4",
                            time: "10",
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                            child: Obx(
                          () => ParkingSlot(
                            slotId: parkingController.slot5KEY,
                            isBooked: parkingController.slot5.value,
                            isParked: parkingController.slot5.value,
                            time: "10",
                            slotName: "A-5",
                          ),
                        )),
                        const SizedBox(
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
                            isBooked: parkingController.slot6.value,
                            isParked: parkingController.slot6.value,
                            slotName: "A-6",
                            time: "10",
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                            child: Obx(
                          () => ParkingSlot(
                            slotId: parkingController.slot7KEY,
                            isBooked: parkingController.slot7.value,
                            isParked: parkingController.slot7.value,
                            slotName: "A-7",
                            time: "10",
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
                            isBooked: parkingController.slot8.value,
                            isParked: parkingController.slot8.value,
                            slotName: "A-8",
                            time: "10",
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
                          "Made By : S SHERWIN ROY",
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
