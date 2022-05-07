// import 'package:destination_alert_system/GoogleMap.dart';
// import 'package:destination_alert_system/alarm.dart';
// import 'package:destination_alert_system/destinationPage.dart';
// import 'package:flutter/material.dart';
// import 'package:geocode/geocode.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:destination_alert_system/geoFence.dart';
// import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
// class CurrentLocation extends StatelessWidget {
//   Position position;
//   Address address;
//   CurrentLocation(this.position, this.address);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF382F24),
//         title: const Text("Current Location"),
//       ),
//       backgroundColor: const Color(0xFFA2B38B),
//       body: Column(
//         //crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 25),
//             child: Text(
//               "Current Latitude: ${position.latitude}",
//               style: const TextStyle(
//                 color: Color(0xFF3F2D17),
//                 fontSize: 25,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 25),
//             child: Text(
//               "Current Longitude: ${position.longitude}",
//               style: const TextStyle(
//                 color: Color(0xFF3F2D17),
//                 fontSize: 25,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 25),
//             child: Text(
//               "Current City: ${address.city}",
//               style: const TextStyle(
//                 color: Color(0xFF3F2D17),
//                 fontSize: 25,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 100),
//             child: TextButton(
//               style: ButtonStyle(
//                 side: MaterialStateProperty.all(
//                     const BorderSide(width: 1, color: Colors.black)),
//               ),
//               onPressed: (() {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ALarm(),
//                   ),
//                 );
//               }),
//               child: const Text(
//                 "Next Page",
//                 style: TextStyle(
//                   color: Color(0xFF3F2D17),
//                   fontSize: 30,
//                   //fontFamily: "Libre Bodoni"
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
