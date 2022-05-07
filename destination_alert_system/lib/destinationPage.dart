import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  GeoCode geoCode = GeoCode();

  late String text;

  Coordinates coordinates = Coordinates();

  void getCoordinates() async {
    coordinates = await geoCode.forwardGeocoding(address: text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Destination Location"),
        backgroundColor: const Color(0xFF382F24),
      ),
      backgroundColor: const Color(0xFFA2B38B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "Destination latitude and longitude : ${coordinates.latitude} : ${coordinates.longitude}",
              style: const TextStyle(
                color: Color(0xFF3F2D17),
                fontSize: 15,
              ),),
              const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              onChanged: (newText) {
                text = newText;
              },
            ),
          ),
          const SizedBox(height: 30,),
          TextButton(
            onPressed: (() {
              setState(() {
                getCoordinates();
              });
            }),
            child: const Text("Enter",
            style:  TextStyle(
                color: Color(0xFF3F2D17),
                fontSize: 25,
              ),),
          ),
          
        ],
      ),
    );
  }
}
