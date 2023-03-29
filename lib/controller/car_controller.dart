import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/controller/model/car_model.dart';

class CarContronller extends GetxController {
  RxBool isParked = false.obs;

  var carData = RxList<CarModel>(); // List of notes

  final db = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    // startDataUpdates();
    getData();
  }

  void startDataUpdates() async {
    while (true) {
      // getData();
      await Future.delayed(Duration(seconds: 1));
    }
  }

  void getData() async {
    var Cars = await db.collection("cars").get();
    carData.clear();
    print("Data loaded");
    for (var car in Cars.docs) {
      carData.add(CarModel.fromJson(car.data()));
    }
  }

  void addNote() async {
    final car = CarModel(
      booked: true,
      isParked: true,
      name: "sdfsd",
      parkedFrom: "12",
      parkedTo: "34",
      paymentDone: true,
    );
    await db
        .collection("cars")
        .add(car.toJson())
        .whenComplete(() => {
              print("Car Added"),
              getData(),
            })
        .catchError(
          (error) => print("Failed to add user: $error"),
        );
  }
}
