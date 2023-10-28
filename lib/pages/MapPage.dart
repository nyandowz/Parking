import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/pages/homepage/homepage.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  BitmapDescriptor parkingSlot1 = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure);
  BitmapDescriptor parkingSlot2 = BitmapDescriptor.defaultMarker;
  BitmapDescriptor parkingSlot3 = BitmapDescriptor.defaultMarker;
  BitmapDescriptor parkingSlot4 = BitmapDescriptor.defaultMarker;

  void allMarkers() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/parking1.jpg")
        .then((Icon) {
      parkingSlot1 = Icon;
    });
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/parking2.jpg")
        .then((Icon) {
      parkingSlot2 = Icon;
    });
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/parking3.jpg")
        .then((Icon) {
      parkingSlot3 = Icon;
    });
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/parking4.jpeg")
        .then((Icon) {
      parkingSlot4 = Icon;
    });
  }

  @override
  void initState() {
    allMarkers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> controller = Completer();
    const LatLng center = LatLng(23.25226182392082, 77.48536382627971);

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
                  // parkingController.timeCounter();
                  Get.toNamed("/about-us");
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                )),
          ],
          centerTitle: true,
        ),
      body: GoogleMap(
        buildingsEnabled: true,
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: center,
          zoom: 18.0,
        ),
        markers: {
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: MarkerId('parking_1'),
            position: LatLng(23.25149294505952, 77.48705898225234),
          ),
          Marker(
            visible: true,
            onTap: () {    Get.to(HomePage());},
            markerId: MarkerId('parking_2'),
            position: LatLng(23.252025246281843, 77.48283182115601),
          ),
          Marker(
            visible: true,
            onTap: () {    Get.to(HomePage());},
            markerId: MarkerId('parking_3'),
            position: LatLng(23.251670379036387, 77.47907672881156),
          ),
          Marker(
            visible: true,
            onTap: () {    Get.to(HomePage());},
            markerId: MarkerId('parking_4'),
            position: LatLng(23.2484962466233, 77.48594318366699),
          ),
          Marker(
            visible: true,
            onTap: () {    Get.to(HomePage());},
            markerId: MarkerId('parking_5'),
            position: LatLng(23.251951095267497, 77.48558382672624),
          ),
        },
        myLocationButtonEnabled: true,
        onMapCreated: (GoogleMapController controller) {},
      ),
    );
  }
}
