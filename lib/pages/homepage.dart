import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/controller/car_controller.dart';
import 'package:smart_car_parking/pages/widgets/car_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    CarContronller carContronller = Get.put(CarContronller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "SMART CAR PARKING",
        ),
        actions: [
          IconButton(
            onPressed: () {
              carContronller.addNote();
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.car_repair,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "SMART CAR PARKING ",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 29,
              ),
              Container(
                height: 600,
                child: Obx(
                  () => GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    children: carContronller.carData
                        .map(
                          (e) => CarWidgets(isParked: e.isParked),
                        )
                        .toList(),
                  ),
                ),
              ),
              Divider(thickness: 3),
            ],
          ),
        ),
      ),
    );
  }
}
