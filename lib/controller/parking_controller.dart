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
  var slot5KEY = "-NRh9RiMNakdmIi6fZUv";
  var slot6KEY = "-NRh9UdC92OokxV__NlW";
  var slot7KEY = "-NRhCKffU8n0q23MErf5";
  var slot8KEY = "-NRhCR1Szb2a59nUtcfs";
  var slot1 = CarModel().obs;
  var slot2 = CarModel().obs;
  var slot3 = CarModel().obs;
  var slot4 = CarModel().obs;
  var slot5 = CarModel().obs;
  var slot6 = CarModel().obs;
  var slot7 = CarModel().obs;
  var slot8 = CarModel().obs;

  @override
  void onInit() {
    super.onInit();
    // startDataUpdates();
  }

  void updateData() async {
    await fb.ref().update({"value": 32});
  }

  void startDataUpdates() async {
    while (true) {
      getData();
      await Future.delayed(Duration(seconds: 1));
      print("Data loaded");
    }
  }

  void getData() async {
    final DatabaseReference res1 = fb.ref().child(slot1KEY);
    res1.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot1.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res2 = fb.ref().child(slot2KEY);
    res2.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot2.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res3 = fb.ref().child(slot3KEY);
    res3.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot3.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res4 = fb.ref().child(slot4KEY);
    res4.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot4.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res5 = fb.ref().child(slot5KEY);
    res5.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot5.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res6 = fb.ref().child(slot6KEY);
    res6.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot6.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res7 = fb.ref().child(slot7KEY);
    res7.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot7.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
    final DatabaseReference res8 = fb.ref().child(slot8KEY);
    res8.onValue.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      slot8.value = CarModel.fromJson(
        json.decode(
          json.encode(dataSnapshot.value),
        ),
      );
    });
  }
  // void deleteData() {
  //   _databaseReference.remove();
  // }

  void addCar(CarModel car) {
    fb.ref().push().set(car.toJson());
  }
}
