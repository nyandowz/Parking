import 'package:flutter/material.dart';
import 'package:smart_car_parking/pages/widgets/car_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMART CAR PARKING"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 79),
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
                height: 79,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarWidgets(isParked: false),
                  SizedBox(width: 20),
                  CarWidgets(
                    isParked: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarWidgets(
                    isParked: false,
                  ),
                  SizedBox(width: 20),
                  CarWidgets(
                    isParked: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarWidgets(
                    isParked: true,
                  ),
                  SizedBox(width: 20),
                  CarWidgets(
                    isParked: false,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarWidgets(),
                  SizedBox(width: 20),
                  CarWidgets(),
                ],
              ),
              Divider(thickness: 3),
            ],
          ),
        ),
      ),
    );
  }
}
