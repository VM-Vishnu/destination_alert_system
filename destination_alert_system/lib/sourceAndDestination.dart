import 'package:destination_alert_system/GoogleMap.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';

class SourcePAge extends StatelessWidget {
  Position position;
  SourcePAge(this.position);
  String sourceAddress = "";
  String destinationAddress = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Source and Destination",),
        backgroundColor: const Color(0xFF382F24),
      ),
      backgroundColor: const Color(0xFFA2B38B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Enter the source location",
          style: TextStyle(
            color: Color(0xFF3F2D17),
            fontSize: 29,

          ),),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: TextField(
              onChanged: (newValue) {
                sourceAddress = newValue;
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Enter the destination location",
          style: TextStyle(
            color: Color(0xFF3F2D17),
            fontSize: 25,

          ),),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: TextField(
              onChanged: (newValue) {
                destinationAddress = newValue;
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: RawMaterialButton(
          constraints: BoxConstraints.tight(const Size(400,45)),
          child: const Text("Next Page",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20),),
          onPressed: () async {
            GeoCode geoCode = GeoCode();
            Coordinates sourcePosition =
                await geoCode.forwardGeocoding(address: sourceAddress);
            Coordinates destinationPosition =
                await geoCode.forwardGeocoding(address: destinationAddress);
      
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    Googlemap(sourcePosition, destinationPosition, position),
              ),
            );
          },
          fillColor: const Color(0xFF382F24),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
        ),
      ),
    );
  }
}
