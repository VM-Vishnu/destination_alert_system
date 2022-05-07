// import 'package:flutter_geofence/Geolocation.dart';
// import 'package:flutter_geofence/geofence.dart';
// import 'package:flutter/material.dart';

// class GeoFEnce extends StatefulWidget {
//   const GeoFEnce({Key? key}) : super(key: key);

//   @override
//   State<GeoFEnce> createState() => _GeoFEnceState();
// }

// class _GeoFEnceState extends State<GeoFEnce> {
//   String text = "add";
//   @override
//   void initState() {
//         super.initState();
//     initialise();
//   }

//   Future<void> initialise() async {
//     Geofence.initialize();
//     print("He");
//     Geofence.startListeningForLocationChanges();
     
//     Geofence.startListening(GeolocationEvent.entry, (entry) {
//       print("Entered");
//       setState(() {
//         text = "Hello";
//       });
//     });
//     setState(() {
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               child: Text(text),
//               onPressed: () {
//                 setState(() {
//                   Geolocation location = const Geolocation(
//                       latitude: 11.3414967,
//                       longitude: 77.6688104,
//                       radius: 10000.0,
//                       id: "Hai");
//                   //Geofence.requestPermissions();

//                  Geofence.addGeolocation(location, GeolocationEvent.entry);
//                   //     .then(
//                   //   (value) => text = "Hai",
//                   // );
//                   initialise();
//                 });
//               },
//             ),
//             TextButton(
//                 onPressed: () {
//                   //Geofence.requestPermissions();
//                   Geofence.getCurrentLocation().then((coordinate) {
//                     print(
//                         "great got latitude: ${coordinate?.latitude} and longitude: ${coordinate?.longitude}");
//                   });
//                 },
//                 child: const Text("Get Current Location")),
//           ],
//         ),
//       ),
//     );
//   }
// }
