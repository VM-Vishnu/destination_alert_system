import 'package:destination_alert_system/GoogleMap.dart';
import 'package:destination_alert_system/destinationPage.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocode/geocode.dart';
import 'package:destination_alert_system/sourceAndDestination.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  late LocationPermission permission;
  void getLocation() async {
      //permission = await Geolocator.checkPermission();
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Permission Denied"),
            content: const Text(
                "Location permission is denied,make sure to turn it on"),
            actions: [
              TextButton(
                onPressed: () async {
                  await Geolocator.requestPermission();
                },
                child: const Text("Ok"),
              ),
            ],
          ),
        );
      }
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    //GeoCode geoCode = GeoCode();
    // Address address = await geoCode.reverseGeocoding(
    //     latitude: position.latitude, longitude: position.longitude);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SourcePAge(position),),);
              }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF382F24),
        title: const Text("Welcome"),
      ),
      backgroundColor: const Color(0xFFA2B38B),
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                const BorderSide(width: 1, color: Colors.black)),
          ),
          onPressed: (() {
            setState(() {
              getLocation();
            });
          }),
          child: const Text(
            "Get Location",
            style: TextStyle(
              color: Color(0xFF3F2D17),
              fontSize: 30,
                          ),
          ),
        ),
      ),
    );
  }
}
