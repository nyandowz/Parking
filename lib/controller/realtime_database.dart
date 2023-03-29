import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'model/car_model.dart';

class ParkingController extends GetxController {
  final fb = FirebaseDatabase.instance;
  var slot1KEY = "-NRdY57houxuL83j7cok";
  var slot2KEY = "-NRdYRojJXhw3_aixhnM";
  var slot3KEY = "-NRdYTO7yp_MbMxjhic3";
  var slot4KEY = "-NRdYWXOcd8oWymDLroj";
  var slot1 = CarModel();
  var slot2 = CarModel();
  var slot3 = CarModel();
  var slot4 = CarModel();

  void updateData() async {
    await fb.ref().update({"value": 32});
  }

  void getDataObject() async {
    final DatabaseReference res1 = fb.ref().child(slot1KEY);
    res1.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot1 = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res2 = fb.ref().child(slot2KEY);
    res2.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot2 = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res3 = fb.ref().child(slot3KEY);
    res3.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot3 = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res4 = fb.ref().child(slot4KEY);
    res4.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot4 = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
  }
  // void deleteData() {
  //   _databaseReference.remove();
  // }

  // void addCar(CarModel car) {
  //   _databaseReference.push().set(car.toJson());
  // }
}
